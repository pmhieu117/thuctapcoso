package dao;

import com.cloudinary.Cloudinary;
import model.ImgModel;
import org.apache.commons.io.FileUtils;

import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImgDAO {
    private static final String CLOUDINARY_URL = "cloudinary://549159477241646:FuNyl1QZnPA0eegTh3dKvyLP9as@hptit117";
    private static final Cloudinary CLOUDINARY = new Cloudinary(CLOUDINARY_URL);

    public ImgModel saveToCloud(Part uploadedImage) {

            try {
                ImgModel image = new ImgModel();
                File temp = File.createTempFile("temp", this.getFileExtension(uploadedImage));
                FileUtils.copyInputStreamToFile(uploadedImage.getInputStream(), temp);
                Map res = CLOUDINARY.uploader().upload(temp, null);
                image.setUrl((String) res.get("secure_url"));
                image.setPublicId((String) res.get("public_id"));
                boolean xoaTemp = temp.delete();
                return image;
            } catch (IOException e) {
                e.printStackTrace();
            }

        return null;
    }

    private String getFileExtension(Part file) {
        Pattern regex = Pattern.compile("filename=\".*\"");
        Matcher matcher = regex.matcher(file.getHeader("content-disposition"));
        if (matcher.find()) {
            String s = matcher.group();
            String tenFile = s.substring(10, s.length() - 1);
            return tenFile.substring(tenFile.lastIndexOf("."));
        }
        return null;
    }
}

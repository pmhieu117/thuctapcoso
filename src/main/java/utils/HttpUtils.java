package utils;
import java.io.BufferedReader;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtils {
    private String value;

    public HttpUtils(String value) {
        this.value = value;
    }

    public <T> T tomodel(Class<T> tclass) {
        try {
            return new ObjectMapper().readValue(value, tclass);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static HttpUtils of(BufferedReader rd) {
        StringBuilder strb = new StringBuilder();
        String line;
        try {
            while ((line = rd.readLine()) != null) {
                strb.append(line);
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            System.out.println(e.getMessage());
        }
        return new HttpUtils(strb.toString());
    }
}

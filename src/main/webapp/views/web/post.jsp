<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/courses/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/courses/asset/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/courses/asset/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<!-- Nav bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light hieudz-bg-nav fixed-top">
    <div class="container">
        <a class="navbar-brand hieudz-color-item" href="#" style="font-size: 40px;">
            <i class="fa-solid fa-angle-left"></i>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        </div>
        <div class="d-flex">
            <button class="btn btn-danger">Đăng xuất</button>
        </div>
    </div>
</nav>
<!-- Recommend -->
<div class="container-fluid" id="recommend">
    <div class="row" style="background-color: #1abc9c;">
        <div class="col-lg-8" style="background-color: #fff;">
            <div class="post-blog">
                <form action="">
                    <input type="text" placeholder="Tiêu đề bài đăng" id="title-post" name="titleblog"><br>
                    <label for="img-post">Hãy chọn một tấm ảnh nha:</label>
                    <input type="file" id="img-post" name="linkimg"><br>
                    <textarea name="contentblog" placeholder="Nội dung bài đăng của bạn ...." id="content-post" ></textarea>
                    <div class="btn-post">
                        <button type="button" class="btn btn-success" onclick="addBlog()">Đăng bài</button>
                    </div>
                </form>
            </div>
        </div>


        <div class="col-lg-4" style="background-color: #fff;">
            <div class="trans huong-dan-thanh-toan">
                <ul>
                    <h4>Nơi đây sẽ giúp bạn chia sẻ những kiến thức hữu ích liên quan đến công nghệ thông tin gửi tới mọi người !</h4>
                    <p>Hãy cùng chúng tôi xây dựng lên một cộng đồng học tập, chia sẻ kiến thức công nghệ và gắn kết mọi người lại với nhau nha.
                        Bài viết của bạn ngay lập tức sẽ được đăng lên blog của trang web để chia sẻ với mọi người.
                        Mọi kiến thức của các bạn đều sẽ trở thành hữu ích khi bạn dành trọn tâm huyết vào bài viết này. Hãy truyền tải chúng tới chúng tôi ngay thôi nào...</p>
                    <ul>
                        Những hành vi, lời lẽ tiêu cực có thể ảnh hưởng tới bài viết của bạn
                        <li>Đăng hình ảnh khiêu dâm, bạo lực, xâm phạm quyền trẻ em...</li>
                        <li>Lời lẽ thô tục, công kích tới cá nhân, tổ chức bất kì</li>
                        <li>Kiến thức chia sẻ không thuộc phạm vi công nghệ</li>
                    </ul>
            </div>
        </div>
    </div>
</div>
<!-- Course-->
<!-- Footer -->
<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Footer Location-->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">Chúng tôi</h4>
                <p class="lead mb-0">
                    Đội nhóm sinh viên PTIT <br/>
                    Học Viên Công nghệ Bưu chính Viễn thông
                </p>
            </div>
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Địa chỉ</h4>
                <p class="lead mb-0">
                    96A Trần Phú, P. Mộ Lao,
                    <br />
                    Q. Hà Đông,TP. Hà Nội
                </p>
            </div>
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Liên hệ</h4>
                <p class="lead mb-0">
                    Điện thoại hỗ trợ: <strong>0962180458</strong><br/>
                    Email: <strong>minh.hieu.110701@gmail.com</strong>
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Modal -->
<script src="${pageContext.request.contextPath}/template/web/courses/bootstrap/js/bootstrap.js"></script>
<script>
    let idActor = ${USERMODEL.idactor};
    function addBlog(){
        const foo = new FormData();
        let title = $('input[name="titleblog"]').val()!=''?$('input[name="titleblog"]').val():undefined;
        let content =  $('textarea[name="contentblog"]').val()!=''?$('textarea[name="contentblog"]').val():undefined;
        let linkimg = $('input[name="linkimg"]');
        if(!title || !content){
            alert("Vui lòng điền đầy đủ nội dung !");
        }else {
            foo.append("title", title);
            foo.append("content", content);
            if(linkimg[0].files.length > 0){
                foo.append("linkimg", linkimg[0].files[0]);
            }else {
                foo.append("linkimg", undefined);
            }
            foo.append("idactor", idActor);
            console.log(foo);
            $.ajax({
                url: '/thuctapcoso_war_exploded/blog-post',
                type: 'post',
                data: foo,
                processData: false,
                contentType: false,
                cache: false,
                success: function (json) {
                    if (json === 'success') {
                        alert("Thêm bài viết thành công !");
                        $(location).attr('href', '/thuctapcoso_war_exploded/views/web/blog.jsp');
                    } else {
                        alert(json);
                    }
                },
                error: function () {
                    alert("Không thể tải dữ liệu lên !");
                }
            });
        }
    }
</script>
</body>
</html>

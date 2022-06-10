<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minh Hieu Education</title>
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
            <ul class="navbar-nav">
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/views/web/post.jsp"><button class="btn btn-primary portfolio-item mx-auto">Đăng bài</button></a></li>
            </ul>
        </div>
        <div class="d-flex">
            <ul class="navbar-nav ms-auto">
                <c:if test="${not empty USERMODEL}">
<%--                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#"><button class="btn btn-info portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#buy" type="button">Cart</button></a></li>--%>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/thuctapcoso_war_exploded/trang-chu?action=logout"><button class="btn btn-danger portfolio-item mx-auto">Đăng xuất</button></a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<!-- Recommend -->
<div class="container-fluid" id="recommend">
    <div class="row justify-content-center" style="background-color: #f0f2f5">
        <div class="col-lg-8" style="background-color: #f0f2f5;">
            <div id="blog-list">
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
<div class="portfolio-modal modal fade" id="editpost" tabindex="-1" aria-labelledby="editpost" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12" style="background-color: #fff;">
                            <div class="post-blog">
                                <form action="">
                                    <input type="text" placeholder="Tiêu đề bài đăng" id="title-post" name="titleblog"><br>
                                    <label for="img-post">Hãy chọn một tấm ảnh nha:</label>
                                    <input type="file" id="img-post" name="linkimg"><br>
                                    <textarea name="contentblog" placeholder="Nội dung bài đăng của bạn ...." id="content-post"></textarea>
                                    <div class="btn-post">
                                        <button type="button" class="btn btn-success" onclick="editBlog()">Cập nhật</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/template/web/courses/bootstrap/js/bootstrap.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    let idActor = ${USERMODEL.idactor}
    let idBlog = 0;
    $(document).ready(function(){
        loadAll();
        // load();
    });
    function loadAll(){
        //Đối tượng JS
        $.ajax({
            url: 'http://localhost:8080/thuctapcoso_war_exploded/blog-get',
            type: 'get',
            dataType: 'json',
            // data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                let blogList = $("#blog-list");
                let htmlBlogList='';
                for(let i=json.length-1;i>=0;i--){
                    if(idActor != json[i].actorModel.idactor){
                        htmlBlogList += ''+
                            '<div class="blog-item" id="'+json[i].idblog+'">'+
                                '<div class="info-blog">'+
                                    '<div class="info-actor-blog">'+
                                        '<span class="mr-2 d-none d-lg-inline text-gray-600 small"><strong>'+json[i].actorModel.name+'</strong></span><br>'+
                                    '</div>'+
                                    '<div class="btn-del">'+
                                        '<c:if test="${not empty USERMODEL}">'+
                                            '<c:if test="${USERMODEL.role eq 'Admin'}">'+
                                                '<button class="btn" onclick="delBlog(this)" type="button"><i class="fa-solid fa-trash-can"></i></button>'+
                                            '</c:if>'+
                                        '</c:if>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="title-blog">'+
                                    '<h2>'+json[i].title+'</h2>'+
                                '</div>'+
                                '<div class="content-blog">'+
                                    '<p>'+json[i].content+'</p>'+
                                '</div>'+
                                '<div class="img-blog">'+
                                    '<img src="'+json[i].linkimg+'" alt="">'+
                                '</div>'+
                            '</div>';
                    }else if(idActor == json[i].actorModel.idactor){
                        htmlBlogList += ''+
                            '<div class="blog-item" id="'+json[i].idblog+'">'+
                            '<div class="info-blog">'+
                            '<div class="info-actor-blog">'+
                            '<span class="mr-2 d-none d-lg-inline text-gray-600 small"><strong>'+json[i].actorModel.name+'</strong></span><br>'+
                            '</div>'+
                            '<div class="btn-del">'+
                            '<button class="btn" type="button" data-bs-toggle="modal" data-bs-target="#editpost" onclick="showBlog(this)"><i class="fa-solid fa-pen-to-square"></i></button>'+
                            '<button class="btn" onclick="delBlog(this)" type="button"><i class="fa-solid fa-trash-can"></i></button>'+
                            '</div>'+
                            '</div>'+
                            '<div class="title-blog">'+
                            '<h2>'+json[i].title+'</h2>'+
                            '</div>'+
                            '<div class="content-blog">'+
                            '<p>'+json[i].content+'</p>'+
                            '</div>'+
                            '<div class="img-blog">'+
                            '<img src="'+json[i].linkimg+'" alt="">'+
                            '</div>'+
                            '</div>';
                    }
                }
                blogList.html(htmlBlogList);
            },
            error: function(){
                alert("Không cập nhật dang ki thành công !");
            }
        });
    }
    function delBlog(element){
        let idblog = $(element).parent().parent().parent().attr("id");
        let conf = confirm("Bạn có chắc chắn muốn xóa bài viết này không ?");
        if(conf == true){
            data={}
            data['idcourse']=idblog;
            $.ajax({
                url: '/thuctapcoso_war_exploded/blog-del',
                type: 'delete',
                dataType: 'json',
                data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
                contentType: 'application/json',
                success: function(json){
                    if(json==="success"){
                        alert("Đã xóa bài viết !");
                        loadAll();
                    }else{
                        alert("Hệ thống đang bị lỗi !");
                    }
                },
                error: function(){
                    alert("Hệ thống đang bị lỗi !");
                }
            });
        }
    }
    function showBlog(element){
        let idblog = $(element).parent().parent().parent().attr("id");
        idBlog = idblog;
        // console.log(idblog);
        $.ajax({
            url: 'http://localhost:8080/thuctapcoso_war_exploded/blog-get',
            type: 'get',
            dataType: 'json',
            // data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                for(let i =0 ;i < json.length;i++){
                    if(json[i].idblog == idBlog){
                        $('input[name="titleblog"]').val(json[i].title);
                        $('textarea[name="contentblog"]').val(json[i].content);
                    }
                }
            },
            error: function(){
                alert("Không cập nhật dang ki thành công !");
            }
        });

    }
    function editBlog(){
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
            foo.append("idblog", idBlog);
            foo.append("idactor", idActor);
            console.log(foo);
            $.ajax({
                url: '/thuctapcoso_war_exploded/blog-put',
                type: 'put',
                data: foo,
                processData: false,
                contentType: false,
                cache: false,
                success: function (json) {
                    if (json === 'success') {
                        alert("Cập nhật thành công !");
                        location.reload();
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

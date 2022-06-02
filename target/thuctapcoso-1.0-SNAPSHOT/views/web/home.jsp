<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Freelancer - Start Bootstrap Theme</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/template/web/home/assets/img/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/font/font-awesome-4.7.0/css/font-awesome.min.css">--%>
    <!--===============================================================================================-->
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/font/Linearicons-Free-v1.0.0/icon-font.min.css">--%>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/assets/vender/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/css/util.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/web/home/css/main.css">
    <!--===============================================================================================-->

    <!-- Sign up -->
<%--    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/home/assets-signup/css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/home/assets-signup/css/bootstrap.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/home/assets-signup/css/style.css">
    <!-- Sign Up End -->

    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/template/web/home/assets/img/icons/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
<%--    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />--%>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="${pageContext.request.contextPath}/template/web/home/css/styles.css" rel="stylesheet" />
    <!-- Link của login-page -->
    <!--===============================================================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
        <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <!-- <a class="navbar-brand" href="#page-top">Minh Hieu Education</a> -->
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" style="font-size: 22px;" href="#portfolio">Khóa học</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" style="font-size: 22px;" href="#about">Mô tả</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" style="font-size: 22px;" href="#contact">Video</a></li>
                <c:if test="${not empty USERMODEL}">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" style="font-size: 22px;" href="${pageContext.request.contextPath}/views/web/blog.jsp">Bài viết</a></li>
                </c:if>
            </ul>
        </div>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <c:if test="${not empty USERMODEL}">
<%--                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#"><button class="btn btn-info portfolio-item mx-auto">Cart</button></a></li>--%>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/thuctapcoso_war_exploded/trang-chu?action=logout"><button class="btn btn-danger portfolio-item mx-auto">Đăng xuất</button></a></li>
                </c:if>
                <c:if test="${empty USERMODEL}">
                    <li class="nav-item mx-0 mx-lg-1"><button class="btn btn-info portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#signup">Đăng kí</button></li>
                    <li class="nav-item mx-0 mx-lg-1"><button class="btn btn-hieudz portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#signin">Đăng nhập</button></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">
        <!-- Masthead Avatar Image-->
        <img class="masthead-avatar mb-5" src="${pageContext.request.contextPath}/template/web/home/assets/img/avataaars.svg" alt="..." />
        <!-- Masthead Heading-->
        <c:if test="${not empty USERMODEL}">
            <h1 class="masthead-heading text-uppercase mb-0">Hello, ${USERMODEL.name}</h1>
        </c:if>
        <c:if test="${empty USERMODEL}">
            <h1 class="masthead-heading text-uppercase mb-0">Minh Hieu Education</h1>
        </c:if>
        <!-- Icon Divider-->
        <div class="divider-custom divider-light">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Masthead Subheading-->
        <!-- <p class="masthead-subheading font-weight-light mb-0">Graphic Artist - Web Designer - Illustrator</p> -->
    </div>
</header>
<!-- Portfolio Section-->
<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <!-- Portfolio Section Heading-->
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Khóa Học</h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Portfolio Grid Items-->
        <div class="row" id="test">
            <!-- Portfolio Item 1-->

        </div>
    </div>
</section>
<!-- About Section-->
<section class="page-section bg-primary text-white mb-0" id="about">
    <div class="container">
        <!-- About Section Heading-->
        <h2 class="page-section-heading text-center text-uppercase text-white">Mô Tả</h2>
        <!-- Icon Divider-->
        <div class="divider-custom divider-light">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- About Section Content-->
        <div class="row">
            <div class="col-lg-4 ms-auto"><p class="lead">Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional SASS stylesheets for easy customization.</p></div>
            <div class="col-lg-4 me-auto"><p class="lead">You can create your own custom avatar for the masthead, change the icon in the dividers, and add your email address to the contact form to make it fully functional!</p></div>
        </div>
        <!-- About Section Button-->
        <!-- <div class="text-center mt-4">
            <a class="btn btn-xl btn-outline-light" href="https://startbootstrap.com/theme/freelancer/">
                <i class="fas fa-download me-2"></i>
                Free Download!
            </a>
        </div> -->
    </div>
</section>
<!-- Contact Section-->
<section class="page-section" id="contact">
    <div class="container">
        <!-- Contact Section Heading-->
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Video</h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Contact Section Form-->
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <!-- Sinh ra lỗi nếu xóa mấy cái thẻ input -->
            </div>
        </div>
        <span class="video-by-youtube">
                    <iframe width="1000" height="700" style="margin: 0 auto;" src="https://www.youtube.com/embed/mVtwHhdjUrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </span>
    </div>
</section>
<!-- Footer-->
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
<!-- Copyright Section-->
<!-- <div class="copyright py-4 text-center text-white">
    <div class="container"><small>Copyright &copy; Your Website 2022</small></div>
</div> -->
<!-- Portfolio Modals-->

<div class="portfolio-modal modal fade" id="signin" tabindex="-1" aria-labelledby="signin" aria-hidden="true" >
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header border-0">
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <!-- Vứt login vào đây -->
                    <!-- <div class="container-login100"> -->
                    <div class="limiter">
                        <div class="container-login100">
                            <div class="wrap-login100">
                                <div class="login100-form-title" style="background-image: url(${pageContext.request.contextPath}/template/web/home/assets/img/bg-01.jpg);">
                                            <span class="login100-form-title-1">
                                                Đăng nhập
                                            </span>
                                </div>
                                <form class="login100-form validate-form" method="post" action="home-page">
                                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                                        <span class="label-input100">Email</span>
                                        <input class="input100" type="text" name="username" placeholder="Email Address">
                                        <span class="focus-input100"></span>
                                    </div>

                                    <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
                                        <span class="label-input100">Mật khẩu</span>
                                        <input class="input100" type="password" name="pass" placeholder="Password">
                                        <span class="focus-input100"></span>
                                    </div>

                                    <div class="flex-sb-m w-full p-b-30">
                                        <div class="contact100-form-checkbox">
                                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                            <label class="label-checkbox100" for="ckb1">
                                                Remember me
                                            </label>
                                        </div>
                                        <c:if test="${not empty error}">
                                            <div class="contact100-form-checkbox">
                                                <label style="color: red;font-size: 15px">
                                                    Sai Email hoặc Mật khẩu !
                                                </label>
                                            </div>
                                        </c:if>
<%--                                        <div>--%>
<%--                                            <a href="#" class="txt1">--%>
<%--                                                Forgot Password?--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
                                    </div>
                                    <div class="container-login100-form-btn">
                                        <button class="login100-form-btn" type="submit">
                                            Login
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="signup" tabindex="-1" aria-labelledby="signup" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header border-0">
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center pb-5">
                <div class="content">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-md-6 contents">
                                <div class="row justify-content-center">
                                    <div class="col-md-12">
                                        <div class="form-block">
                                            <div class="mb-4">
                                                <h3>Đăng kí</h3>
                                            </div>
                                            <form>
                                                <div class="form-group first">
                                                    <label for="name">Họ tên</label>
                                                    <input type="text" class="form-control" id="name" name="name">
                                                </div>
                                                <div class="form-group first">
                                                    <label for="email">Email</label>
                                                    <input type="text" class="form-control" id="email" name="email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password">Mật khẩu</label>
                                                    <input type="password" class="form-control" id="password" name="password">
                                                </div>
                                                <div class="form-group last mb-4">
                                                    <label for="re-password">Xác thực mật khẩu</label>
                                                    <input type="password" class="form-control" id="re-password" name="re-password">
                                                </div>
                                                <div class="radio-item">
                                                    <label for="genderNamAdd">Nam</label>
                                                    <input  type="radio" name="genderAdd" value="Nam" id="genderNamAdd">
                                                    <label for="genderNuAdd">Nữ</label>
                                                    <input  type="radio" name="genderAdd" value="Nu" id="genderNuAdd">
                                                </div>
                                                <button class="btn btn-pill text-white btn-block btn-primary" onclick="addActor()" type="button" data-bs-dismiss="modal" aria-label="Close">Register</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Portfolio Modal 1-->

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="${pageContext.request.contextPath}/template/web/home/js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<!-- Script của login-page -->

<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/bootstrap/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/bootstrap/js/bootstrap.min.js"></script>
<c:if test="${not empty error}">
<script>$('#signin').modal('show');</script>
</c:if>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/assets/vender/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/template/web/home/js/main.js"></script>

<!-- Sign Up -->
<script src="${pageContext.request.contextPath}/template/web/home/assets-signup/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/template/web/home/assets-signup/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/template/web/home/assets-signup/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/template/web/home/assets-signup/js/main.js"></script>
<script>
    $(document).ready(function(){
        loadAll();
    });

    function loadAll(){
        //Đối tượng JS
        $.ajax({
            url: 'http://localhost:8080/thuctapcoso_war_exploded/load-all',
            type: 'get',
            dataType: 'json',
            // data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                let test = $("#test");
                let html = '';
                for (let i = 0;i < json.length; i++){
                    if(json[i].status==1){
                    let course = '<div class="col-md-6 col-lg-4 mb-5">'+
                        '<div class="portfolio-item mx-auto"  style="border: 1px solid #ccc;">'+
                        '<a href="/thuctapcoso_war_exploded/trang-chu?action='+json[i].idcourse+'" class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">'+
                        '<div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>'+
                    '</a>'+
                    '<img style="width: 100%; height: 250px " class="img-fluid" src="'+json[i].linkimg+'" alt="..." />'+
                    '<div class="detail-box">'+
                        '<div>'+json[i].title+'</div>'+
                        '<div>'+
                            'Price:'+
                            '<span>'+json[i].cost+'</span>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '</div>';
                    html += course;
                    }
                }
                test.html(html);

            },
            error: function(){
                alert("Không cập nhật dang ki thành công !");
            }
        });
    }
    function addActor(){
        let email = $("input[name='email']").val()!='' ? $("input[name='email']").val() : undefined;
        let password =$("input[name='passwor']").val()!='' ? $("input[name='password']").val() : undefined;
        let name = $("input[name='name']").val()!='' ? $("input[name='name']").val() : undefined;
        let  gender='';
        jQuery("input[name='genderAdd']").each(function (){
            if(this.checked===true){
                gender+=this.value;
            }
        });
        gender = gender!=''?gender:undefined;
        let role='User';
        let data={};
        data['email']=email;
        data['password']=password;
        data['name']=name;
        data['birth']=undefined;
        data['phone']=undefined;
        data['address']=undefined;
        data['gender']=gender;
        data['role']=role;
        console.log(data);
        $.ajax({
            url: '/thuctapcoso_war_exploded/admin-post',
            type: 'post',
            dataType: 'json',
            data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                if(json=='success'){
                    alert("Đăng kí thành công !");
                }else {
                    alert(json);
                }
            },
            error: function(){
                alert("Sự số hệ thống !");
            }
        });
    }
</script>
</body>
</html>


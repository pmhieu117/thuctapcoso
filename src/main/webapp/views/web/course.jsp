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
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/home/css/styles.css">--%>
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
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active hieudz-color-item" aria-current="page" href="#recommend">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active hieudz-color-item" aria-current="page" href="#course-video">Khóa học</a>
                </li>
            </ul>
        </div>
        <div class="d-flex">
            <ul class="navbar-nav ms-auto">
                <c:if test="${not empty USERMODEL}">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#"><button class="btn btn-info portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#buy" type="button">Giỏ hàng</button></a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/thuctapcoso_war_exploded/trang-chu?action=logout"><button class="btn btn-danger portfolio-item mx-auto">Đăng xuất</button></a></li>
                </c:if>
<%--                <c:if test="${empty USERMODEL}">--%>
<%--                    <li class="nav-item mx-0 mx-lg-1"><button class="btn btn-info portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#signup">Register</button></li>--%>
<%--                    <li class="nav-item mx-0 mx-lg-1"><button class="btn btn-hieudz portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#signin">Sign In</button></li>--%>
<%--                </c:if>--%>
            </ul>
        </div>
    </div>
</nav>
<!-- Recommend -->
<div class="container-fluid" id="recommend">
    <div class="row" style="background-color: #1abc9c;">
        <div class="col-lg-7">
            <div class="course-info">
<%--                <h2>Learn Python: The Complete Python Programming Course</h2>--%>
<%--                <p>Learn A-Z everything about Python, from the basics, to advanced topics like Python GUI, Python Data Analysis, and more!</p>--%>
<%--                <h5>Requirements</h5>--%>
<%--                <ul>--%>
<%--                    <li>Macintosh (OSX)/ Windows(Vista and higher) Machine</li>--%>
<%--                </ul>--%>
<%--                <h5>Who this course is for:</h5>--%>
<%--                <ul>--%>
<%--                    <li>Even if you haven't touched coding before, it won't matter.--%>
<%--                        The easy step-to-step lectures will quickly guide you through everything you'll need to know about coding, mainly Python.--%>
<%--                        This course is here for you to get accustomed and familiar with Python and its syntax.--%>
<%--                        And above all, Python is one of the easiest coding languages to learn, and there's a lot you can do with it.</li>--%>
<%--                </ul>--%>
            </div>
        </div>
        <div class="col-lg-5 video-intro">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/hgs9LY4KyXM"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
        </div>
    </div>
    <div class="row">
        <!-- Video Course -->
        <div class="col-lg-8">
            <div class="course">
                <div class="course-buy">
                    <h2>Đăng kí học ngay hôm nay !</h2>
                    <div class="course-cost">
                        <div class="teacher" id="infoteacher">
<%--                            <p>Giảng viên: <strong>ThS.Phạm Minh Hiếu</strong></p>--%>
<%--                            <p>Kinh nghiệm giảng dạy: <strong>4 năm</strong></p>--%>
                        </div>
                        <div class="button-buy">
                            <h1 class="me-5" id="infocost"></h1>
                            <c:if test="${not empty USERMODEL}">
                                <c:if test="${empty check}">
                                    <button class="btn btn-primary me-2" type="button" onclick="addToCart()">Thêm vào giỏ</button>
                                    <button class="btn btn-success portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#buy">Mua</button>
                                </c:if>
                                <c:if test="${not empty check}">
                                    <c:if test="${check eq 'no'}">
                                        <button class="btn btn-success portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#buy" type="button">Mua</button>
                                    </c:if>
                                </c:if>
                            </c:if>
                            <c:if test="${empty USERMODEL}">
                                <button class="btn btn-primary me-2" onclick="clickNotUserModel()" type="button">Thêm vào giỏ</button>
                                <button class="btn btn-success portfolio-item mx-auto" onclick="clickNotUserModel()" type="button">Mua</button>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Courses list -->
        <div class="col-lg-4">
            <div class="course-content">
                <h2>Course Content !</h2>
                <div class="course-cost">
                    <ul>
                        <li>15 sections</li>
                        <li>146 lectures</li>
                        <li>14h 42m total length</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Course-->
<div class="container-fluid" id="course-video" style="padding-top: 60px;padding-bottom: 60px;">
    <div class="row">
        <!-- Video Course -->
        <div class="col-lg-8">
            <div class="course" id="linkVd">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/tKOeLZ2i24o" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <!-- Courses list -->
        </div>
        <div class="col-lg-4">
            <div class="panel panel-primary" id="result_panel">
                <div class="panel-body">
                    <ul class="list-group video-list-scroll" id="list-video-course">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
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
<div class="portfolio-modal modal fade" id="buy" tabindex="-1" aria-labelledby="buy" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <h3>Thông tin thanh toán</h3>
                            <i>Vui lòng gửi đầy đủ thông tin một cách chính xác nhất đến chúng tôi !</i>
                            <form action="">
                                <input class="my-2 input-buy" type="text" name="nameBuy" placeholder="Họ và tên">
                                <input class="my-2 input-buy" type="text" name="addressBuy" placeholder="Địa chỉ">
                                <input class="my-2 input-buy" type="text" name="phoneBuy" placeholder="Số điện thoại">
                                <input class="my-2 input-buy" type="text" name="emailBuy" placeholder="Email của tài khoản thanh toán">
                                <textarea class="my-2" style="padding: 8px 16px; width: 100%;" name="contentBuy" rows="8" placeholder="Ghi chú tới chúng tôi !"></textarea>
                            </form>
                        </div>
                        <div class="col-lg-6">
                            <h3>Sản phẩm muốn thanh toán</h3>
                            <div class="list-your-card">
                                <div class="panel panel-primary">
                                    <div class="panel-heading"><h4 class="panel-title">Giỏ hàng của bạn</h4></div>
                                </div>
                                <div class="panel-body">
                                    <ul class="input-buy-card video-list-scroll" id="cartModal">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

<%--                        <a href="confirm-trans.html">--%>
                            <button class="btn btn-success" type="button" onclick="confirmBuy()">Xác nhận thông tin và sản phẩm muốn thanh toán !</button>
<%--                        </a>--%>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/template/web/courses/bootstrap/js/bootstrap.js"></script>
<script>
    let idcourseGlobal = ${id};
    let idactorGlobal = ${idactor};
    console.log("idactor: "+idactorGlobal);
    let videoListarr =[];
    let checkBoughtGlobal ={};
    $(document).ready(function(){
        loadAll();
        // load();
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
                let id = ${id};
                let courseInfo = $(".course-info");
                let courseInfoTeacher = $("#infoteacher");
                let videoIntro = $(".video-intro");
                let videoListScroll= $("#list-video-course");
                let courseInfoCost= $("#infocost");
                let course = {};
                for (let i = 0;i < json.length; i++) {
                    if( json[i].idcourse == id ){
                        course = json[i];
                    }
                }
                console.log(course);
                let htmlCourseInfo = '<h2>Bài giảng: '+ course.title +'</h2>'+
                    '<p>'+course.content+'</p>'+
                '<h5>Who this course is for:</h5>'+
                '<ul>'+
                    '<li>'+course.name+'</li>'+
                '</ul>';
                let htmCourseInfoTeacher= '<p>Giảng viên: <strong>'+course.teacher+'</strong></p>'+
                    '<p>Kinh nghiệm giảng dạy: <strong>'+course.experience+'</strong></p>';
                let htmlCourseInfoCost=course.cost;
                let htmlVideoIntro = course.linkintro;
                let htmlVideoListScroll = '';
                videoListarr = course.videoList;
                console.log("Course: "+course.videoList.length);
                for (let i=0; i< course.videoList.length;i++){
                    htmlVideoListScroll += '<li class="list-group-item"><button style="width: 100%" onclick="clickVideo(this)" class="btn" id="'+i+'"><strong>'+course.videoList[i].title+'</strong></button></li>';
                }
                courseInfo.html(htmlCourseInfo);
                courseInfoTeacher.html(htmCourseInfoTeacher);
                courseInfoCost.html(htmlCourseInfoCost);
                videoIntro.html(htmlVideoIntro);
                videoListScroll.html(htmlVideoListScroll);
                for (let i = 0; i < course.videoList.length; i++) {
                    let test = '#';
                    test += i;
                    $(test).attr('disabled', 'disabled');
                }

                data={}
                data['idactor']=idactorGlobal;
                console.log(data);
                $.ajax({
                    url: 'http://localhost:8080/thuctapcoso_war_exploded/cart-put',
                    type: 'put',
                    dataType: 'json',
                    data: JSON.stringify(data),
                    contentType: 'application/json',
                    success: function(json){
                        let cartModal = $("#cartModal");
                        let htmlCartModal='';
                        checkBoughtGlobal = json;
                        console.log(idcourseGlobal);
                        for(let i=0;i<json.length;i++){
                            console.log("json 429: "+i+" "+json[i].courseModel.idcourse+" "+json[i].bought);
                            console.log(idcourseGlobal);
                            if(json[i].bought==0){
                                htmlCartModal += '<li class="list-group-item">' +
                                    '<div style="width: 100%;display: flex;justify-content: space-between;">'+
                                    '<lable for="'+json[i].courseModel.idcourse+'"><strong>'+json[i].courseModel.title+ '</strong></lable>' +
                                    '<input type="checkbox" id="'+json[i].courseModel.idcourse+'" name="checkboxcourse">'+
                                    '</div>'+
                                    '</li>';
                            }else if(idcourseGlobal == json[i].courseModel.idcourse){
                                console.log("VideoListLength "+videoListarr.length);
                                for (let j = 0; j < videoListarr.length; j++) {
                                    console.log("j: "+j);
                                    let test = '#';
                                    test += j;
                                    $(test).removeAttr('disabled');
                                }
                            }
                        }
                        cartModal.html(htmlCartModal);
                    },
                    error: function(){
                        alert("Không cập nhật dang ki thành công !");
                    }
                });

            },
            error: function(){
                alert("Không cập nhật dang ki thành công !");
            }
        });
    }
    // function load(){
    //     data={}
    //     data['idactor']=idactorGlobal;
    //     console.log(data);
    //     $.ajax({
    //         url: 'http://localhost:8080/thuctapcoso_war_exploded/cart-put',
    //         type: 'put',
    //         dataType: 'json',
    //         data: JSON.stringify(data),
    //         contentType: 'application/json',
    //         success: function(json){
    //             let cartModal = $("#cartModal");
    //             let htmlCartModal='';
    //             checkBoughtGlobal = json;
    //             console.log(idcourseGlobal);
    //             for(let i=0;i<json.length;i++){
    //                 console.log("json 429: "+i+" "+json[i].courseModel.idcourse+" "+json[i].bought);
    //                 console.log(idcourseGlobal);
    //                 if(json[i].bought==0){
    //                     htmlCartModal += '<li class="list-group-item">' +
    //                                         '<div style="width: 100%;display: flex;justify-content: space-between;">'+
    //                                             '<lable for="'+json[i].courseModel.idcourse+'"><strong>'+json[i].courseModel.title+ '</strong></lable>' +
    //                                             '<input type="checkbox" id="'+json[i].courseModel.idcourse+'" name="checkboxcourse">'+
    //                                         '</div>'+
    //                                     '</li>';
    //                 }else if(idcourseGlobal == json[i].courseModel.idcourse){
    //                     console.log("VideoListLength "+videoListarr.length);
    //                     for (let j = 0; j < videoListarr.length; j++) {
    //                         console.log("j: "+j);
    //                         let test = '#';
    //                         test += j;
    //                         $(test).removeAttr('disabled');
    //                     }
    //                 }
    //             }
    //             cartModal.html(htmlCartModal);
    //         },
    //         error: function(){
    //             alert("Không cập nhật dang ki thành công !");
    //         }
    //     });
    // }
    function clickVideo(e){
        let linkVideo= $("#linkVd");
        let chiso = Number(e.id);
        let htmlLinkVd = videoListarr[chiso].link;
        console.log(htmlLinkVd);
        linkVideo.html(htmlLinkVd);
    }
    function clickNotUserModel(){
        let check = confirm("Vui lòng quay lại trang chủ để đăng nhập !");
        if(check==true){
            $(location).attr('href', '/thuctapcoso_war_exploded/');
        }
    }
    function addToCart(){
        let data={};
        data['idactor']=idactorGlobal;
        data['idcourse']=idcourseGlobal;
        data['bought']=0;
        $.ajax({
            url: 'http://localhost:8080/thuctapcoso_war_exploded/cart-post',
            type: 'post',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json',
            success: function(json){
               alert(json);
               location.reload(true);
            },
            error: function(){
                alert("Không cập nhật dang ki thành công !");
            }
        });
    }
    // function clickBuy(){
    //     data={}
    //     data['idactor']=idactorGlobal;
    //     console.log(data);
    //     $.ajax({
    //         url: 'http://localhost:8080/thuctapcoso_war_exploded/cart-put',
    //         type: 'put',
    //         dataType: 'json',
    //         data: JSON.stringify(data),
    //         contentType: 'application/json',
    //         success: function(json){
    //             let cartModal = $("#cartModal");
    //             let htmlCartModal='';
    //             checkBoughtGlobal = json;
    //             for(let i=0;i<json.length;i++){
    //                 if(json[i].bought==0){
    //                     htmlCartModal += '<li class="list-group-item"><strong>'+json[i].courseModel.title+'</strong></li>';
    //                 }
    //             }
    //             cartModal.html(htmlCartModal);
    //         },
    //         error: function(){
    //             alert("Không cập nhật dang ki thành công !");
    //         }
    //     });
    // }
    function confirmBuy(){
        let nameBuy=$('input[name="nameBuy"]').val()!=''?$('input[name="nameBuy"]').val():undefined;
        let addressBuy=$('input[name="addressBuy"]').val()!=''?$('input[name="addressBuy"]').val():undefined;
        let phoneBuy=$('input[name="phoneBuy"]').val()!=''?$('input[name="phoneBuy"]').val():undefined;
        let emailBuy=$('input[name="emailBuy"]').val()!=''?$('input[name="emailBuy"]').val():undefined;
        let contentBuy=$('textarea[name="contentBuy"]').val()!=''?$('textarea[name="contentBuy"]').val():undefined;
        let checkboxcourse = $('input[name="checkboxcourse"]');
        let arrCheckBox = [];
        for(let i =0 ;i <checkboxcourse.length;i++){
            if($('input[name="checkboxcourse"]')[i].checked == true){
                arrCheckBox.push(Number($('input[name="checkboxcourse"]')[i].id));
            }
        }
        console.log(Boolean(nameBuy));
        if(!nameBuy || !addressBuy || !phoneBuy || !emailBuy){
            alert("Vui lòng nhập đầy đủ Tên, Địa Chỉ, Số điện thoại và Email !");
        }else{
            data={}
            data['name']=nameBuy;
            data['address']=addressBuy;
            data['phone']=phoneBuy;
            data['email']=emailBuy;
            data['note']=contentBuy;
            data['arrId']=arrCheckBox;
            $.ajax({
                url:'http://localhost:8080/thuctapcoso_war_exploded/home-put',
                type:'put',
                dataType:'json',
                data: JSON.stringify(data),
                contentType:'application/json',
                success: function (json){
                    if(json=="success"){
                        let checkBuy = confirm("Bạn có chắc chắn muốn thanh toán hóa đơn trên không?");
                        if(checkBuy == true){
                            $(location).attr('href', '/thuctapcoso_war_exploded/views/web/confirm-trans.jsp');
                        }
                    }else{
                        alert(json);
                    }
                },
                error: function (json){
                    alert("Hệ thống đang gặp sự cố !");
                }
            });
        }
    }
</script>
<%--<script>--%>
<%--    function clickVideo(e){--%>
<%--        let linkVideo= $("#linkVd");--%>
<%--        let chiso = Number(e.id);--%>
<%--        let htmlLinkVd = videoListarr[chiso].link;--%>
<%--        console.log(htmlLinkVd);--%>
<%--        linkVideo.html(htmlLinkVd);--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>

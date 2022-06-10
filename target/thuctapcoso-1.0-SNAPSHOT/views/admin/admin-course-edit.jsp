<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/template/admin/admin-home/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/template/admin/admin-home/css/sb-admin-2.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/admin-home/vendor/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.min.css">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">ADMIN</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/views/web/blog.jsp">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Bài đăng</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Quản lí
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Tài khoản</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Vai trò:</h6>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/views/admin/admin-tkadmin.jsp">Admin</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/views/admin/admin-tkuser.jsp">User</a>
                </div>
            </div>
        </li>
        <li class="nav-item active">
            <a class="nav-link">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Khóa học</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Doanh thu
        </div>


        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/admin-bill.jsp">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Đơn đặt hàng</span></a>
        </li>

        <!-- Nav Item - Tables -->
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="tables.html">--%>
<%--                <i class="fas fa-fw fa-table"></i>--%>
<%--                <span>Lịch sử</span></a>--%>
<%--        </li>--%>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
<%--                <form--%>
<%--                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">--%>
<%--                    <div class="input-group">--%>
<%--                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."--%>
<%--                               aria-label="Search" aria-describedby="basic-addon2">--%>
<%--                        <div class="input-group-append">--%>
<%--                            <button class="btn btn-success" type="button">--%>
<%--                                <i class="fas fa-search fa-sm"></i>--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">${USERMODEL.name}</span>
                            <c:if test="${USERMODEL.gender eq 'Nu'}">
                                <img class="img-profile rounded-circle"
                                     src="${pageContext.request.contextPath}/template/admin/admin-home/img/undraw_profile_3.svg">
                            </c:if>
                            <c:if test="${USERMODEL.gender eq 'Nam'}">
                                <img class="img-profile rounded-circle"
                                     src="${pageContext.request.contextPath}/template/admin/admin-home/img/undraw_profile.svg">
                            </c:if>
                        </a>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="/thuctapcoso_war_exploded/trang-chu?action=logout" id="logOut" role="button">
                            <button class="btn btn-danger">Đăng xuất</button>
                        </a>
                    </li>
                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <form>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Tên khóa học:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập tên khóa học" name="nameCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Nội dung:</label>
                                    <div class="col-sm-9">
                                        <textarea rows="8" class="form-control" placeholder="Nội dung khóa học" name="contentCourse"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Chi phí khóa học:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập giá tiền khóa học" name="costCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Video giới thiệu:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập link video giới thiệu" name="videoCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Đối tượng:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập đối tượng cho khóa học" name="objCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Tên giảng viên:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập tên giảng viên" name="teacherCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Kinh nghiệm:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="Nhập kinh nghiệm của giảng viên" name="expCourse">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row align-items-center">
                                    <label class="col-sm-3 control-label">Ảnh đại diện:</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="file" placeholder="Enter Photo" name="avtCourse">
                                    </div>
                                </div>
                            </div>
                            <c:if test="${idcourse == 0}">
                                <button class="btn btn-success float-right" type="button" onclick="addCourse()">Thêm khóa học</button>
                            </c:if>
                            <c:if test="${idcourse !=0}">
                                <button class="btn btn-success float-right" type="button" onclick="editCourse()">Cập nhật khóa học</button>
                            </c:if>
                        </form>
                    </div>
                    <c:if test="${idcourse !=0}">
                        <div class="col-sm-6">
                            <div class="row">
                                <h3 style="text-align: center; width: 100%;">Video của khóa học</h3>
                                <div class="col-md-9">
                                    <div class="panel panel-primary" id="result_panel">
                                        <div class="panel-body">
                                            <ul class="list-group" id="videoList">
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <button class="btn btn-success" style="min-width: 120px; margin:20px 0px 8px 0px"  data-bs-toggle="modal" data-bs-target="#add">Thêm</button>
                                    <button class="btn btn-primary" style="min-width: 120px; margin:8px 0px"  data-bs-toggle="modal" data-bs-target="#editSuccess" type="button" onclick="clickBtnEdit()">Sửa</button>
                                    <button class="btn btn-danger" style="min-width: 120px; margin:8px 0px" type="button" onclick="clickBtnDel()">Xóa</button>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>

        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="portfolio-modal modal fade " id="add" tabindex="-1" aria-labelledby="add" aria-hidden="true">
    <div class="modal-dialog modal-xl container-hieupro">
        <div class="modal-content">
            <!-- <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div> -->
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row justify-content-center" style="font-size:25px; margin:32px 0;color: #1cc88a; font-weight: 700;">
                        Thêm Video Cho Khóa Học
                    </div>
                    <div class="row">
                        <div class="form-group" style="width:100%">
                            <div class="row" style="text-align: left;">
                                <label class="col-md-3 control-label">Tên bài giảng:</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" value="" placeholder="Nhập tên bài giảng" name="titlevideo">
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="width:100%">
                            <div class="row" style="text-align: left;">
                                <label class="col-md-3 control-label">Link video:</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" value="" placeholder="Nhập link video" name="linkvideo">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <button class="btn btn-success" data-bs-dismiss="modal" aria-label="Close" type="button" onclick="addVideo()" >Thêm mới Video</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="editSuccess" tabindex="-1" aria-labelledby="editSuccess" aria-hidden="true">
    <div class="modal-dialog modal-xl container-hieupro">
        <div class="modal-content">
            <!-- <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div> -->
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row justify-content-center" style="font-size:25px; margin:32px 0;color: #4e73df; font-weight: 700;">
                        Sửa Video Cho Khóa Học
                    </div>
                    <div class="row">
                        <div class="form-group" style="width:100%">
                            <div class="row" style="text-align: left;">
                                <label class="col-md-3 control-label">Tên bài giảng:</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" value="" placeholder="Nhập tên bài giảng" name="nameVideoModal">
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="width:100%">
                            <div class="row" style="text-align: left;">
                                <label class="col-md-3 control-label">Link video:</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" value="" placeholder="Nhập link video" name="linkVideoModal">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <button class="btn btn-primary" data-bs-dismiss="modal" aria-label="Close" type="button" onclick="editVideo()" >Cập nhập Video</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/admin-home/js/demo/chart-pie-demo.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/admin-home/js/demo/chart-bar-demo.js"></script>
<script>
    let idcourse = ${idcourse};
    let idvideo=0;
    let course = {};
    $(document).ready(function(){
        loadCourse();
    });
    // lấy dữ liệu thì chỉ lấy được đường dẫn thôi chứ lấy sao được file
    function loadCourse(){
        $.ajax({
            url: '/thuctapcoso_war_exploded/course-get',
            type: 'get',
            dataType: 'json',
            contentType: 'application/json',
            success: function(json){
                for(let i=0;i<json.length;i++){
                    if(idcourse===json[i].idcourse){
                        course=json[i];
                    }
                }
                let nameCourse = $('input[name="nameCourse"]');
                let costCourse = $('input[name="costCourse"]');
                let videoCourse = $('input[name="videoCourse"]');
                let teacherCourse = $('input[name="teacherCourse"]');
                let expCourse = $('input[name="expCourse"]');
                let avtCourse = $('input[name="avtCourse"]');
                let contentCourse = $('textarea[name="contentCourse"]');
                let objCourse = $('input[name="objCourse"]');
                nameCourse.val(course.title);
                costCourse.val(course.cost);
                videoCourse.val(course.linkintro);
                teacherCourse.val(course.teacher);
                expCourse.val(course.experience);
                // avtCourse.val(course.linkimg);
                contentCourse.val(course.content);
                objCourse.val(course.name);
                let videoList = $("#videoList");
                let htmlVideoList='';
                console.log("So video: "+course.videoList.length);
                for(let i=0;i<course.videoList.length;i++){
                    htmlVideoList+='<li class="list-group-item"><button style="width: 100%;" onclick="clickVideo(this)" class="btn checkclick" idVideo="'+course.videoList[i].idVideo+'"><strong>'+course.videoList[i].title+'</strong></button></li>';
                }
                videoList.html(htmlVideoList);
            },
            error: function(){
                alert("Không thể tải dữ liệu lên !");
            }
        });
    }
    // function editCourse(){
    //     const data = {}
    //     let nameCourse = $('input[name="nameCourse"]').val()!=''?$('input[name="nameCourse"]').val():undefined;
    //     let costCourse = $('input[name="costCourse"]').val()?$('input[name="costCourse"]').val():undefined;
    //     let videoCourse = $('input[name="videoCourse"]').val()?$('input[name="videoCourse"]').val():undefined;
    //     let teacherCourse = $('input[name="teacherCourse"]').val()?$('input[name="teacherCourse"]').val():undefined;
    //     let expCourse = $('input[name="expCourse"]').val()?$('input[name="expCourse"]').val():undefined;
    //     let avtCourse = $('input[name="avtCourse"]').val()?$('input[name="avtCourse"]').val():undefined; //thêm khóa học thì sẽ thêm avt của nó, chỗ này tải ảnh lê
    //     let contentCourse = $('textarea[name="contentCourse"]').val()?$('textarea[name="contentCourse"]').val():undefined;
    //     data['idcourse']=idcourse;
    //     data['status']=1;
    //     data['cost']=costCourse;
    //     data['title']=nameCourse;
    //     data['content']=contentCourse;
    //     data['linkintro']=videoCourse;
    //     data['name']=undefined;
    //     data['teacher']=teacherCourse;
    //     data['experience']=expCourse;
    //     data['linkimg']=avtCourse;
    //     console.log(data);
    //     $.ajax({
    //         url: '/thuctapcoso_war_exploded/course-put',
    //         type: 'put',
    //         dataType: 'json',
    //         data: JSON.stringify(data),
    //         contentType: 'application/json',
    //         success: function(json){
    //             if(json==='success'){
    //                 alert("Cập nhật thành công !");
    //             }else {
    //                 alert(json);
    //             }
    //         },
    //         error: function(){
    //             alert("Không thể tải dữ liệu lên !");
    //         }
    //     });
    //
    // }
    // function addCourse(){
    //     //tutu, hay oong tao cai data1 di, roi
    //     const data = {}
    //     let nameCourse = $('input[name="nameCourse"]').val()!=''?$('input[name="nameCourse"]').val():undefined;
    //     let costCourse = $('input[name="costCourse"]').val()?$('input[name="costCourse"]').val():undefined;
    //     let videoCourse = $('input[name="videoCourse"]').val()?$('input[name="videoCourse"]').val():undefined;
    //     let teacherCourse = $('input[name="teacherCourse"]').val()?$('input[name="teacherCourse"]').val():undefined;
    //     let expCourse = $('input[name="expCourse"]').val()?$('input[name="expCourse"]').val():undefined;
    //     let avtCourse = $('input[name="avtCourse"]').val()?$('input[name="avtCourse"]').val():undefined; //thêm khóa học thì sẽ thêm avt của nó, chỗ này tải ảnh lê
    //     let contentCourse = $('textarea[name="contentCourse"]').val()?$('textarea[name="contentCourse"]').val():undefined;
    //     // data['idcourse']=0;
    //     data['status']=1;
    //     data['cost']=costCourse;
    //     data['title']=nameCourse;
    //     data['content']=contentCourse;
    //     data['linkintro']=videoCourse;
    //     data['name']=undefined;
    //     data['teacher']=teacherCourse;
    //     data['experience']=expCourse;
    //     data['linkimg']=avtCourse;
    //     console.log(data);
    //     $.ajax({
    //         url: '/thuctapcoso_war_exploded/course-post',
    //         type: 'post',
    //         dataType: 'json',
    //         data: JSON.stringify(data),
    //         contentType: 'application/json',
    //         success: function(json){
    //             if(json==='success'){
    //                 alert("Thêm khóa học thành công !");
    //                 $(location).attr('href', '/thuctapcoso_war_exploded/views/admin/admin-course.jsp');
    //             }else {
    //                 alert(json);
    //             }
    //         },
    //         error: function(){
    //             alert("Không thể tải dữ liệu lên !");
    //         }
    //     });
    // }
    function addCourse() {
        const foo = new FormData();
        const inputFile = document.querySelector('input[name="avtCourse"]');
        let nameCourse = $('input[name="nameCourse"]').val()!=''?$('input[name="nameCourse"]').val():undefined;
        let costCourse = $('input[name="costCourse"]').val()?$('input[name="costCourse"]').val():undefined;
        let videoCourse = $('input[name="videoCourse"]').val()?$('input[name="videoCourse"]').val():undefined;
        let teacherCourse = $('input[name="teacherCourse"]').val()?$('input[name="teacherCourse"]').val():undefined;
        let expCourse = $('input[name="expCourse"]').val()?$('input[name="expCourse"]').val():undefined;
        let contentCourse = $('textarea[name="contentCourse"]').val()?$('textarea[name="contentCourse"]').val():undefined;
        let objCourse = $('input[name="objCourse"]').val()?$('input[name="objCourse"]').val():undefined;
        foo.append("img", inputFile.files[0]);
        foo.append("title",nameCourse);
        foo.append("cost",costCourse);
        foo.append("content",contentCourse);
        foo.append("linkintro",videoCourse);
        foo.append("teacher",teacherCourse);
        foo.append("experience",expCourse);
        foo.append("name",objCourse);
        foo.append("status",1);
        $.ajax({
            url: '/thuctapcoso_war_exploded/course-post',
            type: 'post',
            data: foo,
            processData: false,
            contentType: false,
            cache: false,
            success: function(json){
                if(json==='success'){
                    alert("Thêm khóa học thành công !");
                    $(location).attr('href', '/thuctapcoso_war_exploded/views/admin/admin-course.jsp');
                }else {
                    alert(json);
                }
            },
            error: function(){
                alert("Không thể tải dữ liệu lên !");
            }
        });
    }
    function editCourse(){
            const foo = new FormData();
            const inputFile = $('input[name="avtCourse"]');
            let nameCourse = $('input[name="nameCourse"]').val()!=''?$('input[name="nameCourse"]').val():undefined;
            let costCourse = $('input[name="costCourse"]').val()?$('input[name="costCourse"]').val():undefined;
            let videoCourse = $('input[name="videoCourse"]').val()?$('input[name="videoCourse"]').val():undefined;
            let teacherCourse = $('input[name="teacherCourse"]').val()?$('input[name="teacherCourse"]').val():undefined;
            let expCourse = $('input[name="expCourse"]').val()?$('input[name="expCourse"]').val():undefined;
            let contentCourse = $('textarea[name="contentCourse"]').val()?$('textarea[name="contentCourse"]').val():undefined;
            let objCourse = $('input[name="objCourse"]').val()?$('input[name="objCourse"]').val():undefined;
            console.log(inputFile);
            if(inputFile[0].files.length > 0){
                foo.append("img", inputFile[0].files[0]);
            }else {
                foo.append("img", undefined);
            }
            foo.append("title",nameCourse);
            foo.append("cost",costCourse);
            foo.append("content",contentCourse);
            foo.append("linkintro",videoCourse);
            foo.append("teacher",teacherCourse);
            foo.append("experience",expCourse);
            foo.append("name",objCourse);
            foo.append("status",1);
            foo.append("idcourse",idcourse);
            $.ajax({
                url: '/thuctapcoso_war_exploded/course-put',
                type: 'put',
                data: foo,
                processData: false,
                contentType: false,
                cache: false,
                success: function(json){
                    if(json==='success'){
                        alert("Cập nhật thành công !");
                        $(location).attr('href', '/thuctapcoso_war_exploded/views/admin/admin-course.jsp');
                    }else {
                        alert(json);
                    }
                },
                error: function(){
                    alert("Không thể tải dữ liệu lên !");
                }
            });
    }
    function addVideo(){
        data={};
        let titleVideo = $('input[name="titlevideo"]').val()!=''?$('input[name="titlevideo"]').val():undefined;
        let linkVideo = $('input[name="linkvideo"]').val()!=''?$('input[name="linkvideo"]').val():undefined;
        data['idCourse']=idcourse;
        data['title']=titleVideo;
        data['link']=linkVideo;
        console.log(data);
        $.ajax({
            url: '/thuctapcoso_war_exploded/video-post',
            type: 'post',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json',
            success: function(json){
                if(json==='success'){
                    alert("Thêm video thành công !");
                    loadCourse();
                }else {
                    alert(json);
                }
            },
            error: function(){
                alert("Không thể tải dữ liệu lên !");
            }
        });
    }
    function clickVideo(element){
        idvideo = Number($(element).attr('idVideo'));
    }
    // function checkClick(){
    //     let checkclick = $(".checkclick");
    //     console.log(checkclick);
    //     let check=0;
    //     for(let k =0;k<checkclick.length;k++){
    //         checkclick[k].onclick(function (){
    //             check = 1;
    //         })
    //     }
    //     if(check===0){
    //         idvideo=0;
    //     }
    //     console.log(idvideo);
    // }
    function clickBtnEdit(){
        // console.log( typeof idvideo);
        if(idvideo===0){
            alert("Vui lòng chọn Video bạn muốn sửa !");
            // $('#editSuccess').modal('hide');
        }else{
            let nameVideoModal = $('input[name="nameVideoModal"]');
            let linkVideoModal = $('input[name="linkVideoModal"]');
            let videoModal={};
            for(let i =0 ;i<course.videoList.length;i++){
                // console.log(typeof course.videoList[i].idVideo); //number
                // console.log(typeof idvideo); //string
                if(idvideo === course.videoList[i].idVideo){
                    // console.log(typeof (course.videoList[i].idVideo));
                    videoModal=course.videoList[i];
                    break;
                }
            }
            nameVideoModal.val(videoModal.title);
            linkVideoModal.val(videoModal.link);
        }
    }
    function editVideo(){
        let nameVideoModal = $('input[name="nameVideoModal"]').val()!=''?$('input[name="nameVideoModal"]').val():undefined;
        let linkVideoModal = $('input[name="linkVideoModal"]').val()!=''?$('input[name="linkVideoModal"]').val():undefined;
        let videoModal={};
        videoModal['title']=nameVideoModal;
        videoModal['link']=linkVideoModal;
        videoModal['idVideo']=idvideo;
        videoModal['idCourse']=idcourse;
        $.ajax({
            url: '/thuctapcoso_war_exploded/video-put',
            type: 'put',
            dataType: 'json',
            data: JSON.stringify(videoModal),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                if(json==="success"){
                    alert("Cập nhật thành công video: "+videoModal.title);
                    loadCourse();
                    idvideo=0;
                }else{
                    alert("Không thể cập nhật video: "+videoModal.title);
                }
            },
            error: function(){
                alert("Hệ thống gặp sự cố !");
            }
        });
    }
    function clickBtnDel(){
        if(idvideo===0){
            alert("Vui lòng chọn Video bạn muốn xóa !");
        }else{
            let videoModal={};
            for(let i =0 ;i<course.videoList.length;i++){
                // console.log(typeof course.videoList[i].idVideo); //number
                // console.log(typeof idvideo); //string
                if(idvideo === course.videoList[i].idVideo){
                    // console.log(typeof (course.videoList[i].idVideo));
                    videoModal=course.videoList[i];
                    break;
                }
            }
            let clickChoice = confirm("Bạn chắc chắn muốn xóa video: "+videoModal.title + " chứ ?");
            if(clickChoice == true){
                $.ajax({
                    url: '/thuctapcoso_war_exploded/video-del',
                    type: 'delete',
                    dataType: 'json',
                    data: JSON.stringify(videoModal),//chuyển đối tượng JS thành JSON
                    contentType: 'application/json',
                    success: function(json){
                        if(json==="success"){
                            alert("Đã xóa thành công video: "+videoModal.title);
                            loadCourse();
                        }else{
                            alert("Không thể xóa video: "+videoModal.title);
                        }
                    },
                    error: function(){
                        alert("Hệ thống gặp sự cố !");
                    }
                });
            }
        }
    }
</script>
</body>

</html>
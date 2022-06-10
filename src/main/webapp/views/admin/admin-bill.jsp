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

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="${pageContext.request.contextPath}/views/admin/admin-course.jsp">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Khóa học</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Doanh thu
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <!-- <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>Pages</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Login Screens:</h6>
                    <a class="collapse-item" href="login.html">Login</a>
                    <a class="collapse-item" href="register.html">Register</a>
                    <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                    <div class="collapse-divider"></div>
                    <h6 class="collapse-header">Other Pages:</h6>
                    <a class="collapse-item" href="404.html">404 Page</a>
                    <a class="collapse-item" href="blank.html">Blank Page</a>
                </div>
            </div>
        </li> -->

        <!-- Nav Item - Charts -->
        <li class="nav-item active">
            <a class="nav-link">
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

                <!-- Page Heading -->

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3" style="display: flex; justify-content: space-between; align-items: center;">
                        <h6 class="m-0 font-weight-bold text-primary">Đơn đặt hàng</h6>
                    </div>
                    <div class="card-body" style="width:100%; height:550px; overflow:auto;">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>
                                        <div>Name</div>
                                    </th>
                                    <th>
                                        <div>Address</div>
                                    </th>
                                    <th>
                                        <div>Phone</div>
                                    </th>
                                    <th>
                                        <div>Email</div>
                                    </th>
                                    <th>
                                        <div>Cost</div>
                                    </th>
                                    <th>

                                    </th>
                                </tr>
                                </thead>
                                <tbody id="renderBill">
                                </tbody>
                            </table>
                        </div>
                    </div>
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
<div class="portfolio-modal modal fade" id="editSuccess" tabindex="-1" aria-labelledby="editSuccess" aria-hidden="true">
    <div class="modal-dialog modal-xl container-hieudz">
        <div class="modal-content">
            <!-- <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div> -->
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row justify-content-center" style="font-size:25px; margin:32px 0;color: #4e73df; font-weight: 700;">
                        Xác nhận hóa đơn
                    </div>
                    <div class="row">
                        <input placeholder="Email" type="" name="email" readonly>
                        <input placeholder="Name" type="" name="name" readonly>
                        <input placeholder="Birth" type="" name="birth" readonly>
                        <input placeholder="Phone" type="" name="phone" readonly>
                        <input placeholder="Address" type="" name="address" readonly>
                        <input placeholder="Gender" type="" name="gender" readonly>
                        <div class="panel panel-primary" id="result_panel" style="width:100%">
                            <div class="panel-body" style="width: 100%">
                                <ul class="list-group-bill" id="courseBought">
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <button class="btn btn-primary" type="button" onclick="confirmTrans()">Xác nhận</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/admin-home/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/admin-home/https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
    let idActor = 0;
    let idBill=0;
    $(document).ready(function(){
        loadBill();
    });
    function loadBill(){
        $.ajax({
            url: '/thuctapcoso_war_exploded/bill-get',
            type: 'get',
            dataType: 'json',
            contentType: 'application/json',
            success: function(json){
                let renderBill = $("#renderBill");
                let htmlrenderBill = ''
                for(let i=0;i<json.length;i++) {
                    if(json[i].status==0) {
                        htmlrenderBill += '<tr>' +
                            '<td>' + json[i].name + '</td>' +
                            '<td>' + json[i].address + '</td>' +
                            '<td>' + json[i].phone + '</td>' +
                            '<td>' + json[i].email + '</td>' +
                            '<td>' + json[i].cost + '</td>' +
                            '<td style=" width: 135px;">' +
                            '<div style="display:flex; justify-content: space-between;">' +
                            '<button class="btn btn-primary" type="button" onclick="viewInfo(this)" id="' + json[i].idbill + '" data-toggle="modal" data-target="#editSuccess"><i class="fa-solid fa-eye"></i></button>' +
                            '<button class="btn btn-danger" type="button" onclick="delBill(this)" id="' + json[i].idbill + '"><i class="fa-solid fa-trash-can"></i></button>' +
                            '</div>' +
                            '</td>' +
                            '</tr>';
                    }
                }
                renderBill.html(htmlrenderBill);

            },
            error: function(){
                alert("Hệ thống đang gặp sự cố, không thể tải dữ liệu lên !");
            }
        });
    }
    function delBill(element){
        let checkDel = confirm("Bạn có chắc chắn muốn xóa giao dịch này không ?");
        if(checkDel == true){
            let data ={};
            data['idcourse']=element.id;
            $.ajax({
                url: '/thuctapcoso_war_exploded/bill-del',
                type: 'delete',
                dataType: 'json',
                data: JSON.stringify(data),
                contentType: 'application/json',
                success: function(json){
                    if(json=="success"){
                        alert("Xóa thành công !");
                        loadBill();
                    }else{
                        alert(json);
                    }
                },
                error: function(){
                    alert("Hệ thống đang gặp sự cố !");
                }
            });
        }
    }
    function viewInfo(element){
        let data ={};
        data['idcourse']=element.id;
        idBill=element.id
        $.ajax({
            url: '/thuctapcoso_war_exploded/bill-put',
            type: 'put',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json',
            success: function(json){
                idActor = json.idactor;
                $('input[name="email"]').val('Email: '+json.email);
                $('input[name="name"]').val('Name: '+json.name);
                $('input[name="birth"]').val('Birth: '+json.birth);
                $('input[name="phone"]').val('Phone: '+json.phone);
                $('input[name="address"]').val('Address: '+json.address);
                let gender ='';
                if(json.gender=='Nu'){
                    gender+='Nữ';
                }else{
                    gender+='Nam'
                }
                $('input[name="gender"]').val('Gender: '+gender);
                let courseBought = $('#courseBought');
                let htmlCourseBought = '';
                for(let i=0;i<json.courses.length;i++){
                    htmlCourseBought += '<li class="list-group-item arrIdCourse" id="'+json.courses[i].idcourse+'"><strong>'+json.courses[i].title+' ( '+json.courses[i].cost+' ) '+'</strong></li>';
                }
                courseBought.html(htmlCourseBought);
            },
            error: function(){
                alert("Hệ thống đang gặp sự cố !");
            }
        });
    }
    function confirmTrans(){
        let data ={};
        let arrIdCourse =[];
        let idCourse = $(".arrIdCourse");
        for(let i=0;i<idCourse.length;i++){
            arrIdCourse.push(Number(idCourse[i].id));
        }
        data['idbill']=idBill
        data['idactor']=idActor;
        data['arrIdCourse']=arrIdCourse;
        $.ajax({

            url: '/thuctapcoso_war_exploded/trans-post',
            type: 'post',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json',
            success: function(json){
                if(json=="success"){
                    alert("Xác nhận giao dịch thành công !");
                    loadBill();
                }else{
                    alert("Lỗi hệ thống !");
                }
            },
            error: function(){
                alert("Hệ thống đang gặp sự cố !");
            }
        });
    }
</script>
</body>

</html>

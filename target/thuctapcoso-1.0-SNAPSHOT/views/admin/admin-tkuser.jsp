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

    <title>SB Admin 2 - Charts</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/template/admin/admin-home/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/template/admin/admin-home/css/sb-admin-2.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/admin-home/vendor/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
                    <a class="collapse-item">User</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/admin-course.jsp">
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

                <!-- Page Heading -->

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3" style="display: flex; justify-content: space-between; align-items: center;">
                        <h6 class="m-0 font-weight-bold text-primary">Tài khoản User</h6>
                        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#add">Thêm tài khoản</button>
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
                                        <div>Birth</div>
                                    </th>
                                    <th>
                                        <div>Gender</div>
                                    </th>
                                    <th>
                                        <div>Phone</div>
                                    </th>
                                    <th>
                                        <div>Address</div>
                                    </th>
                                    <th>
                                        <div>Status</div>
                                    </th>
                                    <th>

                                    </th>
                                </tr>
                                </thead>
                                <tbody id="user-list">
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
<div class="portfolio-modal modal fade " id="add" tabindex="-1" aria-labelledby="add" aria-hidden="true">
    <div class="modal-dialog modal-xl container-hieudz">
        <div class="modal-content">
            <!-- <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div> -->
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row justify-content-center" style="font-size:25px; margin:32px 0;color: #1cc88a; font-weight: 700;">
                        Thêm tài khoản của User
                    </div>
                    <form>
                        <div class="row">
                            <input placeholder="Email" type="text" name="emailAdd" required>
                            <input placeholder="Password" type="password" name="passwordAdd" required>
                            <input placeholder="Confirm Password" type="password" name="" required>
                            <input placeholder="Name" type="text" name="nameAdd" required>
                            <input placeholder="Birth" type="date" name="birthAdd" required>
                            <input placeholder="Phone" type="text" name="phoneAdd" required>
                            <input placeholder="Address" type="text" name="addressAdd" required>
                            <div class="radio-list">
                                <div class="radio-item">
                                    <label for="genderNamAdd">Nam</label>
                                    <input  type="radio" name="genderAdd" value="Nam" id="genderNamAdd" required>
                                    <label for="genderNuAdd">Nữ</label>
                                    <input  type="radio" name="genderAdd" value="Nu" id="genderNuAdd" required>
                                </div>
                                <div class="radio-item">
                                    <label for="roleAdminAdd">Admin</label>
                                    <input  type="radio" name="roleAdd" value="Admin" id="roleAdminAdd" required>
                                    <label for="roleUserAdd">User</label>
                                    <input  type="radio" name="roleAdd" value="User" id="roleUserAdd" required>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <button class="btn btn-success" onclick="addActor()" type="button" data-bs-dismiss="modal" aria-label="Close">Thêm tài khoản User</button>
                        </div>
                    </form>
<%--                    <div class="row justify-content-end">--%>
<%--                        <button class="btn btn-success" onclick="addActor()" type="button" data-bs-dismiss="modal" aria-label="Close">Thêm tài khoản Admin</button>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade " id="editSuccess" tabindex="-1" aria-labelledby="editSuccess" aria-hidden="true">
    <div class="modal-dialog modal-xl container-hieudz">
        <div class="modal-content">
            <!-- <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div> -->
            <div class="modal-body text-center pb-5">
                <div class="container">
                    <div class="row justify-content-center" style="font-size:25px; margin:32px 0;color: #4e73df; font-weight: 700;">
                        Sửa Tài Khoản Của User
                    </div>
                    <div class="row" id="modalSetActor">
                    </div>
                    <div class="row justify-content-end">
                        <button class="btn btn-primary" onclick="editActor()" type="button" data-bs-dismiss="modal" aria-label="Close">Sửa Tài Khoản</button>
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
    let id=0;
    $(document).ready(function(){
        loadUser();
    });
    function loadUser(){
        $.ajax({
            url: '/thuctapcoso_war_exploded/admin-api',
            type: 'get',
            dataType: 'json',
            contentType: 'application/json',
            success: function(json){
                let userList = $("#user-list");
                let hmtlUserList='';
                for(let i=0;i<json.length;i++){
                    if(json[i].role == "User") {
                        let id = json[i].id;
                        let status = 'Online';
                        let btn = '<button class="btn btn-danger" onclick="setStatus(this)"><i class="fa-solid fa-rectangle-xmark"></i></button>';
                        if(json[i].status ==0){
                            status="Offline";
                            btn='<button class="btn btn-success" onclick="setStatus(this)"><i class="fa-solid fa-circle-check"></i></button>';
                        }
                        hmtlUserList += '<tr actorId="'+json[i].idactor+'">' +
                            '<td>' + json[i].name + '</td>' +
                            '<td>'+json[i].birth+'</td>' +
                            '<td>'+json[i].gender+'</td>' +
                            '<td>'+json[i].phone+'</td>' +
                            '<td>'+json[i].address+'</td>' +
                            '<td>'+status+'</td>' +
                            '<td  style="width: 135px;">' +
                            '<div style="display:flex; justify-content: space-between;">' +
                            '<button class="btn btn-primary" onclick="setActor(this)" data-bs-toggle="modal" data-bs-target="#editSuccess"><i class="fa-solid fa-pen-to-square"></i></button>' +
                             btn+
                            '</div>' +
                            '</td>' +
                            '</tr>'
                    }
                }
                userList.html(hmtlUserList);
            },
            error: function(){
                alert("Không cập nhật load thành công !");
            }
        });
    }
    function setStatus(element){
        let actorId = $(element).parent().parent().parent().attr('actorId');
        //Dùng ajax để truyền id về BE
        let data = {};
        data['idactor'] = actorId;
        $.ajax({
            url: '/thuctapcoso_war_exploded/admin-del',
            type: 'delete',
            dataType: 'json',
            data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                if(json==="success"){
                    console.log("Success");
                    loadUser();
                }else{
                    alert("Hệ thống đang bị lỗi !");
                }
            },
            error: function(){
                alert("Hệ thống đang bị lỗi !");
            }
        });
        //BE xử lí trong db
        //BE trả lại thông báo cho ajax (Success, Error)
        //Kiểm tr json gửi về nếu là success thì
        //    còn không thì alert lỗi
    }
    function setActor(element){
        let actorId = $(element).parent().parent().parent().attr('actorId');
        id=actorId;
        console.log(id+":"+actorId);
        let data = {};
        data['idactor'] = actorId;
        $.ajax({
            url: '/thuctapcoso_war_exploded/req-post',
            type: 'post',
            dataType: 'json',
            data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
            contentType: 'application/json',
            success: function(json){
                console.log(json);
                let modalSetActor = $("#modalSetActor");
                let genderActor='';
                let roleActor='';
                if(json.gender ==='Nu'){
                    genderActor+='<label for="genderNamEdit">Nam</label>'+
                        '<input  type="radio" name="gender" value="Nam" id="genderNamEdit">'+
                        '<label for="genderNuEdit">Nữ</label>'+
                        '<input  type="radio" name="gender" value="Nu" id="genderNuEdit" checked>';
                }else{
                    genderActor+='<label for="genderNamEdit">Nam</label>'+
                        '<input  type="radio" name="gender" value="Nam" id="genderNamEdit" checked>'+
                        '<label for="genderNuEdit">Nữ</label>'+
                        '<input  type="radio" name="gender" value="Nu" id="genderNuEdit">';
                }
                if(json.role ==='User'){
                    roleActor+='<label for="roleAdminEdit">Admin</label>'+
                        '<input  type="radio" name="role" value="Admin" id="roleAdminEdit">'+
                        '<label for="roleUserEdit">User</label>'+
                        '<input  type="radio" name="role" value="User" id="roleUserEdit" checked>';
                }else{
                    roleActor+='<label for="roleAdminEdit">Admin</label>'+
                        '<input  type="radio" name="role" value="Admin" id="roleAdminEdit" checked>'+
                        '<label for="roleUserEdit">User</label>'+
                        '<input  type="radio" name="role"  id="roleUserEdit" value="User">';
                }
                let htmlModalSetActor = '<input placeholder="Email" type="text" name="email" value="'+json.email+'">'+
                    '<input placeholder="Password" type="text" name="password" value="'+json.password+'">'+
                    '<input placeholder="Name" type="text" name="name" value="'+json.name+'">'+
                    '<input placeholder="Birth" type="date" name="birth" value="'+json.birth+'">'+
                    '<input placeholder="Phone" type="text" name="phone" value="'+json.phone+'">'+
                    '<input placeholder="Address" type="text" name="address" value="'+json.address+'">'+
                    '<div class="radio-list">'+
                    '<div class="radio-item">'+
                    genderActor+
                    '</div>'+
                    '<div class="radio-item">'+
                    roleActor+
                    '</div>'+
                    '</div>';
                modalSetActor.html(htmlModalSetActor);
            },
            error: function(){
                alert("lỗi");
            }
        });
    }
    function editActor(elemet){
        let idactor=id;
        let email = $("input[name='email']").val()!='' ? $("input[name='email']").val() : undefined;
        let password =$("input[name='password']").val()!='' ? $("input[name='password']").val() : undefined;
        let name = $("input[name='name']").val()!='' ? $("input[name='name']").val() : undefined;
        let birth = $("input[name='birth']").val()!='' ? $("input[name='birth']").val() : undefined;
        let phone  = $("input[name='phone']").val()!='' ? $("input[name='phone']").val(): undefined;
        let address = $("input[name='address']").val()!='' ? $("input[name='address']").val() : undefined;
        let  gender='';
        jQuery("input[name='gender']").each(function (){
            if(this.checked===true){
                gender+=this.value;
            }
        });
        let role='';
        jQuery("input[name='role']").each(function (){
            if(this.checked===true){
                role+=this.value;
            }
        })
        if(!email || !password || !name || !birth || !phone || !address){
            alert("Vui lòng điền đầy đủ tất cả thông tin !");
        }else {
            let data = {};
            data['idactor'] = idactor;
            data['email'] = email;
            data['password'] = password;
            data['name'] = name;
            data['birth'] = birth;
            data['phone'] = phone;
            data['address'] = address;
            data['gender'] = gender;
            data['role'] = role;
            console.log(data);
            $.ajax({
                url: '/thuctapcoso_war_exploded/req-put',
                type: 'put',
                dataType: 'json',
                data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
                contentType: 'application/json',
                success: function (json) {
                    if (json === "success") {
                        loadUser();
                    } else {
                        alert("Error");
                    }
                },
                error: function () {
                    alert("Dữ liệu không hợp lệ !");
                }
            });
        }
    }
    function addActor(){
        let email = $("input[name='emailAdd']").val()!='' ? $("input[name='emailAdd']").val() : undefined;
        let password =$("input[name='passwordAdd']").val()!='' ? $("input[name='passwordAdd']").val() : undefined;
        let name = $("input[name='nameAdd']").val()!='' ? $("input[name='nameAdd']").val() : undefined;
        let birth = $("input[name='birthAdd']").val()!='' ? $("input[name='birthAdd']").val() : undefined;
        let phone  = $("input[name='phoneAdd']").val()!='' ? $("input[name='phoneAdd']").val(): undefined;
        let address = $("input[name='addressAdd']").val()!='' ? $("input[name='addressAdd']").val() : undefined;
        let  gender='';
        jQuery("input[name='genderAdd']").each(function (){
            if(this.checked===true){
                gender+=this.value;
            }
        });
        gender = gender!=''?gender:undefined;
        let role='';
        jQuery("input[name='roleAdd']").each(function (){
            if(this.checked===true){
                role+=this.value;
            }
        })
        role = role!=''?role:undefined;
        if(!email || !password || !name || !birth || !phone || !address){
            alert("Vui lòng điền đầy đủ tất cả thông tin !");
        }else {
            let data = {};
            data['email'] = email;
            data['password'] = password;
            data['name'] = name;
            data['birth'] = birth;
            data['phone'] = phone;
            data['address'] = address;
            data['gender'] = gender;
            data['role'] = role;
            console.log(data);
            $.ajax({
                url: '/thuctapcoso_war_exploded/admin-post',
                type: 'post',
                dataType: 'json',
                data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
                contentType: 'application/json',
                success: function (json) {
                    if (json === 'success') {
                        loadUser();
                    } else {
                        alert(json);
                    }
                },
                error: function () {
                    alert("Dữ liệu không hợp lệ !");
                }
            });
        }
    }
</script>
</body>

</html>

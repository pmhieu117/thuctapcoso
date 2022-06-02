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
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active hieudz-color-item" aria-current="page" href="#recommend">Recommend</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active hieudz-color-item" aria-current="page" href="#course-video">Course</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
        <div class="d-flex">
            <button class="btn btn-danger">Đăng xuất</button>
        </div>
    </div>
</nav>
<!-- Recommend -->
<div class="container-fluid" id="recommend">
    <div class="row" style="background-color: #1abc9c;">
        <div class="col-lg-7" style="background-color: #fff;">
            <div class="thanh-toan">
                <h2>Hóa đơn thanh toán</h2>
                <ul>
                    <li>Họ và tên: <strong>${TRANS.name}</strong></li>
                    <li>Địa chỉ: <strong>${TRANS.address}</strong></li>
                    <li>Số điện thoại: <strong>${TRANS.phone}</strong></li>
                    <li>Email tài khoản thanh toán: <strong>${TRANS.email}</strong></li>
                    <li>Ghi chú: <strong>${TRANS.note}</strong></li>

                </ul>
                <table>
                    <thead>
                    <tr>
                        <td><strong>Tên khóa học</strong></td>
                        <td><strong>Số bài giảng</strong></td>
                        <td><strong>Số tiền</strong></td>
                    </tr>
                    </thead>
                    <tbody id="renderBill">
                    </tbody>
                </table>
                <div class="noidung-thanhtoan">
                    <h6>Nội dung chuyển khoản của bạn là: </h6>
                    <h1>${TRANS.name}</h1>
                </div>
            </div>
            <div class="thongbao-thanhtoan">
                <i>Vui lòng đọc kĩ các bước được hướng dẫn bên cạnh để có thể thực hiện giao dịch thành ông !</i><br/>
                <input type="checkbox" id="check" name="acceptbill" onclick="acceptBuy(this)">
                <label for="check">Tôi đã đọc kĩ hướng dẫn !</label>
            </div>

            <button class="btn btn-success" type="button" id="confirmBuy" onclick="confirmBuy()">Xác nhận đã thanh toán !</button>
        </div>


        <div class="col-lg-5" style="background-color: #fff;">
            <div class="trans huong-dan-thanh-toan">
                <ul>
                    <h4>Hướng dẫn thực hiện thanh toán</h4>
                    <li style="margin-bottom: 16px;"><strong>Bước 1:</strong> Bạn hãy kiểm tra lại thật kĩ thông tin cá nhân và các khóa học muốn thanh toán trên hóa đơn.</li>
                    <li><strong>Bước 2:</strong> Thực hiện thanh toán chính xác tổng số tiền vào tài khoản ngân hàng của chúng tôi:</li>
                    <ul style="list-style: none;">
                        <li><strong>Số tài khoản: </strong>19035382774018</li>
                        <li><strong>Ngân hàng: </strong>Ngân hàng TMCP Kỹ thương Việt Nam (Techcombank)</li>
                        <li><strong>Tên chủ tài khoản: </strong>Phạm Minh Hiếu</li>
                    </ul>
                    <li style="margin: 16px 0px;"><strong>Bước 3:</strong> Vui lòng nhập nội dung được in trên hóa đơn trong phần Nội dung thanh toán để tiến hành giao dịch.</li>
                    <li style="margin-bottom: 16px;"><strong>Bước 4:</strong> Sau khi đã chuyển khoản thành công, bạn vui lòng chụp màn hình lại giao dịch đó và hóa đơn trên trang web rồi giữ lại.</li>
                </ul>
                <p style="margin-top: 32px;">Đơn hàng sẽ được kích hoạt trong 24h ngay sau khi chúng tôi nhận được khoản thanh toán của bạn. Bạn vui lòng chờ đợi trong khoản thời gian đó !</p>
                <p>Mọi thắc mắc vui lòng liên hệ hoặc để lại lời nhắn qua:</p>
                <ul style="list-style: none; margin-top: -16px;">
                    <li>Số điện thoại: <strong>0962180458</strong></li>
                    <li>Email: <strong>minh.hieu.110701@gmail.com</strong></li>
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
    let sum=0;
    $(document).ready(function(){
        loadAll();
        $("#confirmBuy").attr('disabled','disabled');
    });
    function loadAll(){
        $.ajax({
            url:'http://localhost:8080/thuctapcoso_war_exploded/trans-get',
            type:'get',
            dataType:'json',
            contentType:'application/json',
            success: function (json){
                sum =0;
                let renderBill = $('#renderBill');
                let htmlRenderBill = '';
                for(let i =0 ;i<json.length;i++){
                    htmlRenderBill += '<tr>'+
                                            '<td>'+json[i].title+'</td>'+
                                            '<td>'+json[i].videoList.length+'</td>'+
                                            '<td>'+json[i].cost+'</td>'+
                                        '</tr>';
                    sum+=json[i].cost;
                }
                htmlRenderBill += '<tr>'+
                    '<td colspan="2">Tổng tiền</td>'+
                    '<td>'+sum+'</td>'+
                    '</tr>';
                renderBill.html(htmlRenderBill);
            },
            error: function (json){
                alert("Hệ thống đang gặp sự cố !");
            }
        });
    }
    function confirmBuy(){
        let data={};
        let name = "${TRANS.name}";
        let address = "${TRANS.address}";
        let phone ="${TRANS.phone}";
        let email = "${TRANS.email}";
        let note ="${TRANS.note}";
        let arrId =${TRANS.arrId};
        let idactor = ${USERMODEL.idactor};
        data['name']=name;
        data['address']=address;
        data['phone']=phone;
        data['email']=email;
        data['note']=note;
        data['arrId']=arrId;
        data['status']=0;
        data['cost']=sum;
        data['idactor']=idactor;
        console.log(data);
        $.ajax({
            url:'http://localhost:8080/thuctapcoso_war_exploded/bill-post',
            type:'post',
            dataType:'json',
            data: JSON.stringify(data),
            contentType:'application/json',
            success: function (json){
                if(json=='success'){
                    let ans = confirm("Mua khóa học thành công, bạn có muốn quay về trang chủ không ?");
                    if(ans == true){
                        $(location).attr('href',"/thuctapcoso_war_exploded/");
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
    function acceptBuy(e){
        if(e.checked == true){
            console.log("Hi");
            $("#confirmBuy").removeAttr('disabled');
        }else{
            $("#confirmBuy").attr('disabled','disabled');
        }
    }
</script>
</body>
</html>

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
            <button class="btn btn-danger">????ng xu???t</button>
        </div>
    </div>
</nav>
<!-- Recommend -->
<div class="container-fluid" id="recommend">
    <div class="row" style="background-color: #1abc9c;">
        <div class="col-lg-7" style="background-color: #fff;">
            <div class="thanh-toan">
                <h2>H??a ????n thanh to??n</h2>
                <ul>
                    <li>H??? v?? t??n: <strong>${TRANS.name}</strong></li>
                    <li>?????a ch???: <strong>${TRANS.address}</strong></li>
                    <li>S??? ??i???n tho???i: <strong>${TRANS.phone}</strong></li>
                    <li>Email t??i kho???n thanh to??n: <strong>${TRANS.email}</strong></li>
                    <li>Ghi ch??: <strong>${TRANS.note}</strong></li>

                </ul>
                <table>
                    <thead>
                    <tr>
                        <td><strong>T??n kh??a h???c</strong></td>
                        <td><strong>S??? b??i gi???ng</strong></td>
                        <td><strong>S??? ti???n</strong></td>
                    </tr>
                    </thead>
                    <tbody id="renderBill">
                    </tbody>
                </table>
                <div class="noidung-thanhtoan">
                    <h6>N???i dung chuy???n kho???n c???a b???n l??: Email c???a b???n v?? t??n vi???t t???t c??c kh??a h???c</h6>
                    <h3>V?? d??? b???n mua kh??a h???c L?? Thuy???t Th??ng tin th?? s??? l??: ${TRANS.email} LTTT </h3>
                </div>
            </div>
            <div class="thongbao-thanhtoan">
                <i>Vui l??ng ?????c k?? c??c b?????c ???????c h?????ng d???n b??n c???nh ????? c?? th??? th???c hi???n giao d???ch th??nh ??ng !</i><br/>
                <input type="checkbox" id="check" name="acceptbill" onclick="acceptBuy(this)">
                <label for="check">T??i ???? ?????c k?? h?????ng d???n !</label>
            </div>

            <button class="btn btn-success" type="button" id="confirmBuy" onclick="confirmBuy()">X??c nh???n ???? thanh to??n !</button>
        </div>


        <div class="col-lg-5" style="background-color: #fff;">
            <div class="trans huong-dan-thanh-toan">
                <ul>
                    <h4>H?????ng d???n th???c hi???n thanh to??n</h4>
                    <li style="margin-bottom: 16px;"><strong>B?????c 1:</strong> B???n h??y ki???m tra l???i th???t k?? th??ng tin c?? nh??n v?? c??c kh??a h???c mu???n thanh to??n tr??n h??a ????n.</li>
                    <li><strong>B?????c 2:</strong> Th???c hi???n thanh to??n ch??nh x??c t???ng s??? ti???n v??o t??i kho???n ng??n h??ng c???a ch??ng t??i:</li>
                    <ul style="list-style: none;">
                        <li><strong>S??? t??i kho???n: </strong>19035382774018</li>
                        <li><strong>Ng??n h??ng: </strong>Ng??n h??ng TMCP K??? th????ng Vi???t Nam (Techcombank)</li>
                        <li><strong>T??n ch??? t??i kho???n: </strong>Ph???m Minh Hi???u</li>
                    </ul>
                    <li style="margin: 16px 0px;"><strong>B?????c 3:</strong> Vui l??ng nh???p n???i dung ???????c in tr??n h??a ????n trong ph???n N???i dung thanh to??n ????? ti???n h??nh giao d???ch.</li>
                    <li style="margin-bottom: 16px;"><strong>B?????c 4:</strong> Sau khi ???? chuy???n kho???n th??nh c??ng, b???n vui l??ng ch???p m??n h??nh l???i giao d???ch ???? v?? h??a ????n tr??n trang web r???i gi??? l???i.</li>
                </ul>
                <p style="margin-top: 32px;">????n h??ng s??? ???????c k??ch ho???t trong 24h ngay sau khi ch??ng t??i nh???n ???????c kho???n thanh to??n c???a b???n. B???n vui l??ng ch??? ?????i trong kho???n th???i gian ???? !</p>
                <p>M???i th???c m???c vui l??ng li??n h??? ho???c ????? l???i l???i nh???n qua:</p>
                <ul style="list-style: none; margin-top: -16px;">
                    <li>S??? ??i???n tho???i: <strong>0962180458</strong></li>
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
                <h4 class="text-uppercase mb-4">Ch??ng t??i</h4>
                <p class="lead mb-0">
                    ?????i nh??m sinh vi??n PTIT <br/>
                    H???c Vi??n C??ng ngh??? B??u ch??nh Vi???n th??ng
                </p>
            </div>
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">?????a ch???</h4>
                <p class="lead mb-0">
                    96A Tr???n Ph??, P. M??? Lao,
                    <br />
                    Q. H?? ????ng,TP. H?? N???i
                </p>
            </div>
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Li??n h???</h4>
                <p class="lead mb-0">
                    ??i???n tho???i h??? tr???: <strong>0962180458</strong><br/>
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
                    '<td colspan="2">T???ng ti???n</td>'+
                    '<td>'+sum+'</td>'+
                    '</tr>';
                renderBill.html(htmlRenderBill);
            },
            error: function (json){
                alert("H??? th???ng ??ang g???p s??? c??? !");
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
                    let ans = confirm("Mua kh??a h???c th??nh c??ng, b???n c?? mu???n quay v??? trang ch??? kh??ng ?");
                    if(ans == true){
                        $(location).attr('href',"/thuctapcoso_war_exploded/");
                    }
                }else{
                    alert(json);
                }
            },
            error: function (json){
                alert("H??? th???ng ??ang g???p s??? c??? !");
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

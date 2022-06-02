<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>Hello ${USERMODEL.name}</h1>
<br/>
     <div style="margin-bottom: 20px">
         <form>
             <label for="fullname">Fullname: </label>
             <input id="fullname" name="fullname" /><br/>
             <label for="email">Email: </label>
             <input id="email" name="email" /><br/>
                 <button type="button" onclick="dangki()">Registry</button>
         </form>
     </div>

     <button onclick="load()"> Load String</button>
     <script>
         function load(){
             $.ajax({
                 url: '/thuctapcoso_war_exploded/load-all',
                 type: 'get',
                 dataType: 'json',
                 contentType: 'application/json',
                 success: function(json){
                     for (let i = 0;i< json.length; i++){
                         document.write(json[i]);
                     }
                 },
                 error: function(){
                     alert("Không cập nhật load thành công !");
                 }
             });
         }

         function dangki(){
             let fullname = $("#fullname").val();
             let email = $("#email").val();
             let data = {};
             data['fullname'] = fullname;
             data['email'] = email;
             //Đối tượng JS
             $.ajax({
                 url: '/thuctapcoso_war_exploded/dang-ki',
                 type: 'post',
                 dataType: 'json',
                 data: JSON.stringify(data),//chuyển đối tượng JS thành JSON
                 contentType: 'application/json',
                 success: function(json){
                     alert(json['fullname']+" "+json['email']);
                 },
                 error: function(){
                     alert("Không cập nhật dang ki thành công !");
                 }
             });
         }

     </script>
</body>
</html>
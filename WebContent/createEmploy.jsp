<%@ page language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//TR" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Yeni Çalisan Ekle</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Job-point Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/font-awesome.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Mukta+Malar:400,500,600,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
</head>
<body >
<jsp:useBean id="cemp" class="com.CreateEmploy" scope="request"/>
<jsp:setProperty property="*" name="cemp"/>
<%
if(cemp.getFname()!=null){
%>
<jsp:forward page="LoginSer"/>
<%} %>
<form name="frm" method="get" >
<img src="images\hrms.png" width="100%" height="124">
<h2 align="center" class="style1">Yeni Çalisan Ekle</h2><br>
<p align="left">TC Kimlik No :&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "empid" size = "12"><br>
<br><p align="center">Ad :&nbsp;&nbsp;<input type= "text" name = "fname" size = "20">
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Soyad : <input type= "text" name = "lname" size = "20"><br> 
<br><p align="center">Cinsiyet : <input type= "radio" name="gender" value= "male"> Erkek
  <input type= "radio" name="gender"  value= "female">Kadin <br>
<br><p align="center">Departman :&nbsp;&nbsp;&nbsp;
  <select name="dept" >
     <option>Bilgi Islem</option>
     <option>Personel</option>
    <option>Programci</option>
     <option>Testing</option>
   </select><br>
<br><p align="center"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Sehir  :&nbsp;&nbsp;
  <input type= "text" name = "city"size = "20" /><br>
<br><p align="center">&nbsp;&nbsp; &nbsp;&nbsp;Cep Telefonu : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "mob" size = "10"/></p>
<br><p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maas :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "salary" size = "10"/></p>
<br><p align="center">Kullanici Adi :&nbsp;&nbsp;
  <input type= "text" name = "user" >
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Sifre : 
<input type= "password" name = "pwd"size = "10"> </p>
<p align="center">
<br>Kullanici Tipi:&nbsp; &nbsp;<select name="type" >
 <option>Admin</option>
 <option>Employ</option>
 </select>
 <br>
 <br>  
 <input type= "hidden" name = "page" value = "create" />
  <input class="btn" type= "Submit" name = "submit" value = "Çalisani Kaydet"/>
 </p>
</form>
</body>
</html>
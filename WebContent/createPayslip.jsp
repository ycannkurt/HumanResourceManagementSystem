<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maas Durumu Olustur</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #2A5FFF;
}
-->
</style>
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
<body>
<%
ResultSet rs;
%>
<form  action="LoginSer"  method="GET">
<%
try{
rs=(ResultSet)request.getAttribute("pay");
while(rs.next()){%>
<img src="images\cga-banner-img-hand-960-2.jpg" width="100%" height="124">
<br><h2 align="center" class="style1"> Maas  Düzenle</h2>
<br><p align="center">Çalisan TC Kimlik No: 
  <input name="emp" type="text" readonly="readonly" value="<%out.println(rs.getString("Emp_Id"));%>"></p>
<br><p align="center">Adi : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="fname" type="text" readonly="readonly" value="<%out.println(rs.getString("fname"));%>"/>  </p>
<br><p align="center">Soyadi : 
  <input name="lname" type="text" readonly="readonly" value="<%out.println(rs.getString("lname"));%>"/>  </p>
<br><p align="center">Maas : &nbsp;
  <input name="salary" type="text" value="<%out.println(rs.getString("salary"));%>"/>  </p>
<br><p align="center">Maas Durumu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <select name="status" >     <option>Ödendi</option>     <option>Ödenmedi</option>   </select>
</p>
<br><p align="center">
  <input type= "hidden" name = "page" value = "PayslipG" />
  <input type="submit" name="Submit" value="Islemi Tamamla" align="middle"/>
</p>
<%} %>
</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>






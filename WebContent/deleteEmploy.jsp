<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #2A5FFF;
}
-->
</style>
<title>Çalisan Kaydi Sil</title>
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
<%
ResultSet rs;
%>
<form  action="LoginSer"  method="GET">
<%
try{
rs=(ResultSet)request.getAttribute("DE");
while(rs.next()){%>
<img src="images\hrms.png" width="100%" height="124">
<h2 align="center" class="style1"> Çalisan Kaydi Sil </h2><br><br>
<p align="center"><strong>Çalisan TC Kimlik No: <input type= "text" name = "emp"readonly="readonly" value="<%out.println(rs.getString("Emp_Id"));%>"/>
</strong>
<br><br>
<p align="center">Adi :&nbsp;&nbsp;<input type= "text" name = "fname" size = "20"readonly="readonly" value="<%out.println(rs.getString("fname"));%>">
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Soyadi : <input type= "text" name = "lname" size = "20"readonly="readonly" value="<%out.println(rs.getString("lname"));%>"> <br><br>
<p align="center">Departmani :&nbsp;&nbsp;&nbsp;<input type= "text" name = "dept" size = "20"readonly="readonly" value="<%out.println(rs.getString("dept"));%>"><br><br>
<p align="center">Sehir  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "city" readonly="readonly" value="<%out.println(rs.getString("city"));%>"/>
</p><br>
<p align="center">Cep telefonu : 
  <input type= "text" name = "mob"readonly="readonly" value="<%out.println(rs.getString("mob"));%>"/></p><br>
<p align="center">Maas :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "salary" readonly="readonly"value="<%out.println(rs.getString("salary"));%>"/>
  <br>
  <br>
<input type="hidden" name="page" value="Deleted">  
<input class="btn" type="submit" value="Sil">
<%} %>
	</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
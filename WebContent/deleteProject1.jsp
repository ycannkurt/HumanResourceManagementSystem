<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #2A5FFF;
}
-->
</style>
	<title>Proje Sil</title>
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
rs=(ResultSet)request.getAttribute("dp");
while(rs.next()){%>
<img src="images/sp-project-management-img.png" width="100%" height="131" />
<h2 align="center" class="style1"> Proje Kaydini Sil </h2>
<p align="center">Proje ID: &nbsp;&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "pid"  readonly="readonly" value="<%out.println(rs.getString("pid"));%>"/>
  <p align="center"> �alisan TC Kimlik No: <input type= "text" name = "emp"value="<%out.println(rs.getString("Emp_Id"));%>"/>
<p align="center">Proje Adi: <input type = "text" name = "pname" value = "<%out.println(rs.getString("pname"));%>"/>
<p align="center">Proje Durumu: <input type = "text" name = "status" value = "<%out.println(rs.getString("status"));%>"/>
<p align="center">
  <input type= "hidden" name = "page" value = "DeleteProject" />
  <input type="submit" name="Submit" value="Projeyi Sil" align="middle"/>
<%} %>
	</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
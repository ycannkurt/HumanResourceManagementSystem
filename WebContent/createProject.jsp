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
<title>Yeni Proje Olustur</title>
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
<%!ResultSet rst;
String s;
%>
<form  name="frm" action="LoginSer"  method="GET">
<img src="images/sp-project-management-img.png" width="100%" height="131"/>
<h2 align="center" class="style1"> �alisana Proje Ata </h2><br><br>
<p align="center"><strong>�alisan TC Kimlik Numarasi Se�in:  
  </strong>
  <select name="emp"  >
  <%rst=(ResultSet)request.getAttribute("cpr");
  while(rst.next()){ 
	  s=rst.getString(1);
 %>

     <option value=<%=s %>><%out.println(s);%></option>
    <%} %>
    </select>
    <br><br>
<p align="center">Proje ID: &nbsp;&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "pid" value = "" />
  <br><br>
  </p>
<p align="center">Proje Adi: &nbsp;&nbsp; 
  <input type= "text" name = "pname" value = "" />
  <br><br>
</p>
<p align="center">Proje Durumu: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select name="status" size="1">
  <option>Bekliyor</option>
   <option>�alisiyor</option>
    <option>Tamamlandi</option>
  </select>
  </p>
  <br><br>
<div align="center">
  <input type= "hidden" name = "page" value = "prjct" />
  <input class="btn" type="submit" name="Submit" value="Yeni Proje Olustur" align="middle"/>
</div>
</form>
</body>
</html>
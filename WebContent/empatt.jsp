<%@ page language="java" import="java.util.*,java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Çalisan Görev Durumu</title>
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
<%!ResultSet rs;
String s;

%>
<form  action="LoginSer"  method="GET" >
<img src="images/sp-project-management-img.png" width="100%" height="131" />
<p align="center"><strong>Çalisan TC Kimlik No:  
  </strong><input type= "text" name = "emp">
  <%response.setIntHeader("Refresh", 5); %>
  <%
    java.text.DateFormat date = new java.text.SimpleDateFormat("yyyy-MM-dd");
    java.text.DateFormat time = new java.text.SimpleDateFormat("hh:mm:ss a"); 
  %>
 <br> <br>Simdiki Tarih: <input type="text" name="mydate" readonly="readonly" value="<%= date.format(new java.util.Date()).toString() %>"/>
 
   Simdiki Zaman: 
   <input type="text" name="mytime" readonly="readonly" value="<%= time.format(new java.util.Date()).toString()%>"/>
    </p>
 </p>
 <p align="center">
 <input type= "hidden" name = "page" value = "attendence" />
  <input class="btn" type="submit" name="Submit" value="Submit" align="middle"/>
</p>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.sql.ResultSet"%>
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
.style2 {
	font-size: 16px;
	font-family:"Times New Roman", Times, serif;
	color: #000000;
}
-->
</style>
<title>Maas Durumu</title>
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
</head>
<body>
<%
ResultSet rs;
%>
<form  action="LoginSer"  method="GET">
<%
try{
rs=(ResultSet)request.getAttribute("checkpay");%>
<h2 align="center" class="style1"> Maas Durumu </h2>
   <table class="table">
   		<thead class="thead-dark">
             <tr>
                <TH>Çalisan TC Kimlik No</TH>
                <TH>Adi</TH>
				<TH>Soyadi</TH>
				<TH>Maas</TH>
				<TH>Maas Durumu</TH>
          	</tr>
        </thead>
        <tbody>
                             
            <% while(rs.next()){ %>
            	<TR>
                	<TD> <%= rs.getInt(1) %></tD>
                	<TD> <%= rs.getString(2) %></TD>
                	<TD> <%= rs.getString(3) %></TD>
					<TD> <%= rs.getInt(4) %></TD>
					<TD> <%= rs.getString(5) %></TD>
            	</TR>
            	<% } %>
                              	
         </tbody>
   </table>     



</form>
    
    <br> <br> 
      <center><input  name="button" type="button" class="btn" onClick="window.print()" value="Yazdir">
      </center>
      <%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>






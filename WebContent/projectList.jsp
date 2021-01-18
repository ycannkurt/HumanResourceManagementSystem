<%@ page language="java" import="java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Proje Listesi</title>
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
<body >
<form method="GET" action = "LoginSer">
        <% Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey","root","");
            Statement stmt = con.createStatement() ;
            ResultSet rs = stmt.executeQuery("select pid,pname,status from project") ; 
        %>
            
            <div class="sub-title">
                     <div class="sub-head mb-3 ">
                        <h2 align="center" class="style1"> Proje Kayitlari</h2><br>
                     </div>
                     <div class="bd-example mb-4">
                        <table class="table">
                           <thead class="thead-dark">
                              <tr>
                             <TH>Proje ID</TH>
                <TH>Proje Adi</TH>
                <TH>Proje Durumu</TH>
                              </tr>
                           </thead>
                           <tbody>
                             
                              <% while(rs.next()){ %>
            					<TR>
                				<TD> <%= rs.getString(1) %></TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
            					</TR>
            					<% } %>
                              	
                           </tbody>
                        </table>
                     </div>
                  </div>
            
            
            
 <br> <br>
      <center><input  class="btn" name="button" type="button" class="style2" onClick="window.print()" value="Yazdir">
      </center>
</form>
</body>
</html>
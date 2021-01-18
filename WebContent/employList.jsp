<%@ page language="java" import="java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Çalisan Listesi</title>
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
            ResultSet rs = stmt.executeQuery("select * from employ") ; 
        %>
        
                  <div class="sub-title">
                     <div class="sub-head mb-3 ">
                        <h2 align="center" class="style1"> Çalisan Listesi</h2><br>
                     </div>
                     <div class="bd-example mb-4">
                        <table class="table">
                           <thead class="thead-dark">
                              <tr>
                                 <th scope="col">TC Kimlik No</th>
                                 <th scope="col">Ad</th>
                                 <th scope="col">Soyad</th>
                                 <th scope="col">Cinsiyet</th>
                                 <th scope="col">Departman</th>
                                 <th scope="col">Sehir</th>
                                 <th scope="col">Cep telefonu</th>
                                 <th scope="col">Maas</th>
                              </tr>
                           </thead>
                           <tbody>
                             
                              <% while(rs.next()){ %>
            					<TR>
                					<TD> <%= rs.getString(1) %></tD>
                					<TD> <%= rs.getString(2) %></TD>
                					<TD> <%= rs.getString(3) %></TD>
									<TD> <%= rs.getString(4) %></TD>
									<TD> <%= rs.getString(5) %></TD>
									<TD> <%= rs.getString(6) %></TD>
									<TD> <%= rs.getString(7) %></TD>
									<TD> <%= rs.getString(8) %></TD>
            					</TR>
            					<% } %>
                              	
                           </tbody>
                        </table>
                     </div>
                  </div>
 <br> <br>
      <center><input  name="button" type="button" class="btn" onClick="window.print()" value="Listeyi yazdir"></center>
 
</form>

      <!--//Nav script scrollon--> 
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working-->

</body>
</html>
<%-- 
    Document   : view_hospital
    Created on : Jun 17, 2016, 11:49:08 AM
    Author     : IVS PC5
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <link rel="shortcut icon" href="favicon.ico" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>AB-Encryption</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

<style>
    
        #reg
        {
            height:550px;
            width: 750px;

      visibility: visible; position: relative; top:50px; left:40px; display: block;
        background-color: rgba(0, 0, 0, 0.80);
	border: 1px solid #cecece;
        z-index: 15;
	padding: 20px;
	color: #FFF;
        -webkit-box-shadow: 0px 0px 4px #000 inset;
	-moz-box-shadow: 0px 0px 4px #000 inset;
	box-shadow: 0px 0px 4px #000 inset;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
	-khtml-border-radius: 10px;
	border-radius: 10px;

}
#chumma:hover{
     -webkit-transform: scale(1.5,1.5);
    -moz-transform:scale(1.5,1.5);
    opacity: 1;
    -webkit-opacity: 1;
    -moz-opacity: 1;
}
h3:hover{  
    
    transform: rotateY(180deg);
-ms-transform: rotateY(180deg); 
-webkit-transform: rotateY(180deg);

}
form {
	font-family:'Century Gothic', arial, serif;
	width: 350px;
	margin-left: 25px;
}
input, textarea, select {
	font-family:"Myriad Pro", "Trebuchet MS", sans-serif;
	background-color: #fff;
	border: 1px solid #ccc;
	width: 300px;
	min-height: 30px;
	display: block;
	margin-bottom: 16px;
	margin-top: 8px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	-ms-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	color: #fff;
}
textarea {
	min-height: 200px;
	resize:none;
}
input:focus, textarea:focus, select:focus{
	-webkit-box-shadow: 0 0 25px #ccc;
	-moz-box-shadow: 0 0 25px #ccc;
	box-shadow: 0 0 25px #ccc;
}
/* The interesting bit */
input:not(:focus), textarea:not(:focus), select:not(:focus){
	opacity: 0.5;
}
input:required,textarea:required, select:required{
 background: url("images/asterisk_orange.png") no-repeat 280px 7px;
}
input:valid, textarea:valid, select:valid{
background: url("images/") no-repeat 280px 5px;
}
input:focus:invalid, textarea:focus:invalid, select:focus:invalid{
 background: url("images/") no-repeat 280px 7px;
}
input[type=submit]{
	font-size: 24px;
	padding: 10px;
	background: none;
	opacity: 1.0;
}
        
</style>
</head>
<body >
<div id="wrapper">
    <div id="header" >
		<div id="logo">
                   <a href="#" >Secure Sharing Of Health Records in Cloud</a>
			<p><a href="#">Using Attribute Based Encryption</a></p>
		</div>
	</div>
	<!-- end #header -->
	  <div id="page" style="height:800px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    <div id="reg">
                                        <a href="cloud_admin_home.jsp"> <img id="chumma" style="left:730px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                        <center><h3>Hospital Details</h3></center><br>
                                        <table><tr><th>&nbsp;&nbsp;&nbsp;&nbsp;Hospital Id</th><th>&nbsp;&nbsp;&nbsp;&nbsp;Hospital Name</th><th>&nbsp;&nbsp;&nbsp;&nbsp;Location</th><th>&nbsp;&nbsp;&nbsp;&nbsp;Admin</th><th>&nbsp;&nbsp;&nbsp;&nbsp;Mail Id</th><th>&nbsp;&nbsp;&nbsp;&nbsp;Contact</th></tr>
                                        <%
                                    String sql="select * from hospital order by id"; 
                                    DBConnection dbc=new DBConnection();
                                    ResultSet rs=dbc.getData(sql);
                                    while(rs.next()){
                                        %>
                                            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt(1)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="action/hos_delete_action.jsp?id=<%=rs.getInt(1)%>"><img src="images/DeleteRed.png" style="width: 20px; height: 20px;" id="chumma"></a></td></tr>                                                                                        
                                            <%
                                    }
                                        %>
                                           
                                  </table>
                                            </div>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
    

<!-- end #footer -->
</body>
</html>

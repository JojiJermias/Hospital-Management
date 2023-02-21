<%-- 
    Document   : show_stock
    Created on : Jun 17, 2016, 11:42:08 AM
    Author     : IVS PC5
--%>

<%@page import="java.lang.String"%>

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
            width: 590px;

      visibility: visible; position: relative; top:50px; left:140px; display: block;
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
       
	  <div id="page" style="height:1000px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
                                    String name="";
                                    int Sto=0;
                                    int pri=0;
                                    int n=0;
                                        String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                   int h_id=Integer.parseInt(session.getAttribute("hos_id").toString());
                                   String sql="select * from medicine where hospital_id='"+h_id+"'";
                                   DBConnection dbc=new DBConnection();
                                   ResultSet rs=dbc.getData(sql);
                                  
                                   
                                
                                %>		
                                <div class="entry">
                                     <div id="reg">
                                    
                                         <a href="pharmacist_home.jsp"> <img id="chumma" style="  position: relative; left: 570px;top:-5px;height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                       <h3 style="left:250px;top:-15px; position: relative;">Medicine List</h3>
                                                    <table  style="width: 600px;"><tr><th>Number</th><th>Medicine Name</th><th>Stock</th><th>Price</th></tr>
                                                <%
                                   while(rs.next()){
                                       name=rs.getString("name");
                                       Sto=rs.getInt("stock");
                                       pri=rs.getInt("prize");
                                       n++;
                                                %>
                                                           
                                                    <tr><td><%=n%></td><td><%=name%></td><td><%=Sto%></td><td><%=pri%></td></tr>
                                               
                                    
                                            <%}%>
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

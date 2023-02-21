<%-- 
    Document   : pat_management
    Created on : Jun 17, 2016, 10:33:23 AM
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
                       width: 740px;

      visibility: visible; position: relative; top:50px; left: 50px; display: block;
        background-color: rgba(0, 0, 0, 0.80);
	border: 1px solid #cecece;
        z-index: 15;
        padding-top: 10px;
	padding-bottom: 20px;
        padding-left:20px;
        padding-right:  20px;
        
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
        
</style>
 </head>
<body>
<div id="wrapper">
    <div id="header" >
		<div id="logo">
                   <a href="#" >Secure Sharing Of Health Records in Cloud</a>
			<p><a href="#">Using Attribute Based Encryption</a></p>
		</div>
	</div>
	<!-- end #header -->
	  <div id="page" style="height: 600px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
                                    int hid=Integer.parseInt(session.getAttribute("hos_id").toString());
                                   // //JOptionPane.showMessageDialog(null, hid);
                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    <div id="reg">
                                         <a href="hos_admin_home.jsp"> <img style="left: 720px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                        <center><table border="2" >
                                            <tr><th>Doctor Id</th><th>Doctor Name</th><th>Department</th><th>Qualification</th><th>Experience</th><th>Mobile</th><th>Email</th></tr>
                                            <%
                                    int id=0;
                                    String name="",cun_id="",cun_doc="";
                                    String dep="",hos="",pla="",pos="",mob="",em="";
                                    String sql="select * from patients where hospital_id='"+hid+"'";
                                    DBConnection dbc=new DBConnection();
                                    ResultSet rs=dbc.getData(sql);
                                    while(rs.next()){
                                        id=rs.getInt("id");
                                        name=rs.getString("name");
                                        dep=rs.getString("department");
                                        hos=rs.getString("qualification");
                                        pla=rs.getString("experience");
                                        mob=rs.getString("mobile");
                                        em=rs.getString("email");
                                   
                                            %>
                                            <tr><td><%=id%></td><td><%=name%></td><td><%=dep%></td><td><%=hos%></td><td><%=pla%></td><td><%=mob%></td><td><%=em%></td></tr>
                                            <% }%>
                                        </table></center>
                                        
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

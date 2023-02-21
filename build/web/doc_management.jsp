<%-- 
    Document   : doc_management
    Created on : Jun 17, 2016, 10:29:03 AM
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
                       width: 800px;

      visibility: visible; position: relative; top:50px; left:20px; display: block;
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

#chumma:hover{
     -webkit-transform: scale(1.5,1.5);
    -moz-transform:scale(1.5,1.5);
    opacity: 1;
    -webkit-opacity: 1;
    -moz-opacity: 1;
    
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
                                        <a href="hos_admin_home.jsp"> <img id="chumma" style="left: 780px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a><br>
                                            <h3><center>Doctor Details</center></h3>
                                        <center><table>
                                                <tr><th>&nbsp;&nbsp;&nbsp;Doctor Id</th><th>&nbsp;&nbsp;&nbsp;Doctor Name</th><th>&nbsp;&nbsp;&nbsp;Department</th><th>&nbsp;&nbsp;&nbsp;Qualification</th><th>&nbsp;&nbsp;&nbsp;Experience</th><th>&nbsp;&nbsp;&nbsp;Mobile</th><th>&nbsp;&nbsp;&nbsp;Email</th><th>&nbsp;&nbsp;&nbsp;Edit</th></tr>
                                            <%
                                    int id=0;
                                    String name="";
                                    String dep="",qual="",exp="",mob="",em="";
                                    String sql="select * from doctor where hospital_id='"+hid+"'";
                                    DBConnection dbc=new DBConnection();
                                    ResultSet rs=dbc.getData(sql);
                                    while(rs.next()){
                                        id=rs.getInt("id");
                                        name=rs.getString("name");
                                        dep=rs.getString("department");
                                        qual=rs.getString("qualification");
                                        exp=rs.getString("experience");
                                        mob=rs.getString("mobile");
                                        em=rs.getString("email");
                                   
                                            %>
                                                <tr><td>&nbsp;&nbsp;&nbsp;<%=id%></td><td>&nbsp;&nbsp;&nbsp;<%=name%></td><td>&nbsp;&nbsp;&nbsp;<%=dep%></td><td>&nbsp;&nbsp;&nbsp;<%=qual%></td><td>&nbsp;&nbsp;&nbsp;<%=exp%></td><td>&nbsp;&nbsp;&nbsp;<%=mob%></td><td>&nbsp;&nbsp;&nbsp;<%=em%></td><td>&nbsp;&nbsp;&nbsp;<a href="action/delete_doc.jsp?id=<%=id%>"><img src="images/DeleteRed.png" style="width: 20px; height: 20px;" id="chumma"></a></a></td></tr>
                                            <% }%>
                                        </table></center>
                                                 <center><span style="color: red;"><%=msg%></span></center>
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

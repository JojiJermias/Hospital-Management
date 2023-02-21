
<%-- 
    Document   : admin_home
    Created on : Jun 17, 2016, 11:49:08 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <link rel="shortcut icon" href="favicon.ico" />
<meta name="keywords" content="" />
<meta name="descriptjion" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>AB-Encryption</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script>
     window.history.forward(1);
  
     <%
     

    String name = (String)session.getAttribute("username");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("username")==null)
               {
        response.sendRedirect("index.jsp");
    }

    %></script>
       <style type="text/css">
            td,th{
               color:black;
           }
        body {height: 100%;padding: 0;margin: 0;}.ad{text-align: center;position: absolute;top:20px;margin:0 auto;width:100%;}.container {margin: 0 auto;width: 410px;text-align: center;}.container h1 {font-family: Arial;font-size: 48px;text-align: center;text-transform: uppercase;color: #282321;margin: 220px 0 100px 0;text-shadow: 0 1px 0 #6c5e5b, 0 -1px 0 rgba(0,0,0,0.6);filter: dropshadow(color=#6c5e5b, offx=0, offy=1);}

/*------------------------------------------*/
/*--------- Dark Menu Styles Begin ---------*/
/*------------------------------------------*/

        /* Main Dark Menu Unordered List First Level Style */
        ul.dark_menu {
            list-style: none;
            padding: 0;
            font-family: Arial;
            font-size: 14px;
            line-height: 14px;
        }

        /* Clears all floated List Items */
        ul.dark_menu:after {
            content: "";
            clear: both;
            display: block;
            overflow: hidden;
            visibility: hidden;
            width: 0;
            height: 0;
        }

            /* First Level List Items Style */
            ul.dark_menu li {
                float: left;
                margin: 0 0 0 10px;
                position: relative;
                
            }

            /* First List Item in First Level Style */
            ul.dark_menu li:first-child {
                margin: 0;
            }

                /* List Items Links Style */
                ul.dark_menu li a, ul.dark_menu li a:link {
                    color: white;
                    text-decoration: none;
                    display: block;
                    padding: 10px 26px;
                    
                    /* Text Shadow */
                    text-shadow: 0 1px 0 #4b433e;
                    
                    /* Gradient Background */
                    background: #362f2c; /* Old browsers */
                    background: -moz-linear-gradient(top, #362f2c 0%, #282321 100%); /* FF3.6+ */
                    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#362f2c), color-stop(100%,#282321)); /* Chrome,Safari4+ */
                    background: -webkit-linear-gradient(top, #362f2c 0%,#282321 100%); /* Chrome10+,Safari5.1+ */
                    background: -o-linear-gradient(top, #362f2c 0%,#282321 100%); /* Opera11.10+ */
                    background: -ms-linear-gradient(top, #362f2c 0%,#282321 100%); /* IE10+ */
                    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#362f2c', endColorstr='#282321',GradientType=0 ); /* IE6-9 */
                    background: linear-gradient(top, #362f2c 0%,#282321 100%); /* W3C */

                    /* Border Radius */
                    -webkit-border-radius: 4px;
                    -moz-border-radius: 4px;
                    border-radius: 4px;

                    /* Box Shadows */
                    -webkit-box-shadow: inset 0 1px 0 #564b46,
                                       0 1px 1px #181514;
                    -moz-box-shadow: inset 0 1px 0 #564b46,
                                     0 1px 1px #181514;
                    box-shadow: inset 0 1px 0 #564b46,
                                0 1px 1px #181514;

                    /* Transition Effect */
                    -webkit-transition: all 1s ease;
	                -moz-transition: all 1s ease;
	                -o-transition: all 1s ease;
	                -ms-transition: all 1s ease;
	                transition: all 1s ease;
                }

                    /* List Items Links Hover State Style */
                    ul.dark_menu li a:hover {
                        color: #73635e;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Gradient Background */
                        background: highlighttext; /* Old browsers */
                        background: -moz-linear-gradient(top, #282321 0%, #362f2c 99%, #362f2c 100%); /* FF3.6+ */
                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#282321), color-stop(99%,#362f2c), color-stop(100%,#362f2c)); /* Chrome,Safari4+ */
                        background: -webkit-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Chrome10+,Safari5.1+ */
                        background: -o-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Opera11.10+ */
                        background: -ms-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* IE10+ */
                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#282321', endColorstr='#362f2c',GradientType=0 ); /* IE6-9 */
                        background: linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* W3C */

                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* List Items Links Active and Selected State Style */
                    ul.dark_menu li a.selected, ul.dark_menu li a:active {
                        color: white;
                        background: darkcyan;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;
                        
                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* Sub Menu Unordered List Second Level Style */
                    ul.dark_menu li ul {
                        display: none;
                    }

                    /* Before Second Level Unordered List Style */
                    ul.dark_menu li ul:before {
                        content: " ";
                        position: absolute;
                        display: block;
                        z-index: 1500;
                        left: 0;
                        top: -10px;
                        height: 10px;
                        width: 100%;
                    }

                    /* Sub Menu Unordered List Second Level Style
                        When Parent List Item is Hovered */
                    ul.dark_menu li:hover ul {
                        position: absolute;
                        display: block;
                        z-index: 1000;
                        left:8px;
                        top: 44px;
                        /*padding: 5px 0;*/
                        list-style: none;
                        background:black;
                        height: auto;
                        

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;

                        /* Border Radius */
                        -webkit-border-radius: 4px;
                        -moz-border-radius: 4px;
                        border-radius: 4px;
                    }

                        /* Second Level Menu List Items Style */
                        ul.dark_menu li ul li {
                            float: none;
                            margin: 0 10px;                            
                            border-bottom: 1px solid #191614;
                            border-top: 1px solid #3a3230;
                        }

                        /* First List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:first-child {
                            margin: 0 10px;
                            border-top: 0 none;
                        }

                        /* Last List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:last-child {
                            border-bottom: 0 none;
                        }

                        /* Second Level List Items Links Style */
                        ul.dark_menu li ul li a, ul.dark_menu li ul li a:link {
                            color: yellowgreen;
                            display: block;
                            background: transparent none;
                            padding: 10px 20px 10px 5px;
                            white-space: nowrap;

                            /* Text Shadow */
                            text-shadow: 0 1px 2px #000;
                                                        
                            /* Box Shadows */
                            -webkit-box-shadow: 0 0 0 rgba(0,0,0,0);
                            -moz-box-shadow: 0 0 0 rgba(0,0,0,0);
                            box-shadow: 0 0 0 rgba(0,0,0,0);

                            /* Border Radius */
                            -webkit-border-radius: 0px;
                            -moz-border-radius: 0px;
                            border-radius: 0px;
                        }

                        /* Second Level List Items Links Hover State Style */
                        ul.dark_menu li ul li a:hover {
                            text-decoration: none;
                            
                            color: highlight;
                            text-shadow: 1px 2px  #121214;
                        }

/*----------------------------------------*/
/*--------- Dark Menu Styles End ---------*/
/*----------------------------------------*/
    </style>

<script>
    function lod(){
        var g=document.myform.doc;
        if(g[0].checked){
           
             document.getElementById("name").style.display="block";
        document.getElementById("namebtn").style.display="block";
        document.getElementById("name1").style.display="none";
        document.getElementById("namebtn1").style.display="none";
        }else if(g[1].checked){
            document.getElementById("name").style.display="none";
        document.getElementById("namebtn").style.display="none";
        document.getElementById("name1").style.display="block";
        document.getElementById("namebtn1").style.display="block";
        }
       
    }
    
</script>
</head>
    <body onload="lod()">
<div id="wrapper">
    <%
        session.setAttribute("Errmsg", "");
    %>
    <div id="header" >
		<div id="logo">
                   <a href="#" >Secure Sharing Of Health Records in Cloud</a>
			<p><a href="#">Using Attribute Based Encryption</a></p>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul class="dark_menu">
			<li><a  href="#" class="selected">Home</a></li>
			<li><a href="#">Registration</a>
                        <ul>
                                <li><a href="doc_registration.jsp">Doctor</a></li>
                                <li><a href="recep_registration.jsp">Receptionist</a></li>
                                <li><a href="pharm_registration.jsp">Pharmacist</a></li></ul>
                        </li>
			<li ><a href="add_medicine.jsp">Medicine</a></li>
			<li><a href="add_emegency_doc.jsp">Emergency</a></li>
                        
                        <li><a href="#">Management</a><ul>
                                <li><a href="doc_management.jsp">Doctor</a></li>
                                
                                <li><a href="phar_management.jsp">Pharmacist</a></li>
                            <li><a href="rec_management.jsp">Receptionist</a></li>
                            </ul>
                        </li>
                        <li><a href="change_add_pass.jsp">Change Password</a></li>
                        
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="page"  style="height:1000px;">
		<div id="content"  style="height:1000px;">
                    <div id="banner" style="height:1000px;">
                         <%
                                       
                                                   String p_id=request.getParameter("p_id");
                                                   int p_id1=Integer.parseInt(p_id);
                                                   
                                                   DBConnection ob=new DBConnection();
                                                   ResultSet rs2=ob.send(p_id1);
                                                   while(rs2.next())
                                                   {
                                   out.println("hi");
                                       %>
                                       
                     <form action="verify2.jsp" name="register" method="get">
                        <table border="1">
                            
                            <tr><td>Name</td>
                                <td><input type="text" name="name" value="<% out.println(rs2.getString(2));  %>" readonly/></td>
                            </tr> 
                            
                             <tr>
                              <td>Patient Id</td>
                              <td><input type="text" name="p_id" value="<% out.println(rs2.getInt(3));  %>" readonly/></td>
                            </tr>
                           
                             <tr>
                              <td>Hospital Id</td>
                              <td><input type="text" name="h_id" value="<% out.println(rs2.getInt(4));  %>" readonly/></td>
                            </tr>
                            
                           
                          <tr>
                              <td>Doctor</td>
                              <td><input type="text" name="doctor" value="<% out.println(rs2.getString(5));  %>" readonly/></td>
                            </tr>
                            
                             <tr><td>Doctor Id</td>
                                <td><input type="text" name="d_id" value="<% out.println(rs2.getInt(6));  %>" readonly/></td>
                            </tr> 
                            
                             <tr><td>Date</td>
                                <td><input type="text" name="date" value="<% out.println(rs2.getDate(7));  %>" readonly/></td>
                            </tr>
                            
                             <tr><td>Time</td>
                                <td><input type="text" name="time" value="<% out.println(rs2.getTime(8));  %>" readonly/></td>
                            </tr>
                            
                             <tr><td>Description</td>
                                <td><input type="text" name="description" value="<% out.println(rs2.getString(9));  %>" readonly/></td>
                            </tr>
                            
                             <tr><td>Medicine</td>
                                <td><input type="text" name="medicine" value="<% out.println(rs2.getString(10));  %>" readonly/></td>
                            </tr>
                            
                            
                            
                            
                          
                        </table>
                            <input type="submit" value="OK">
                     </form>
                            
                    <% } %>
                    </div>
			
                    
			<div style="clear: both;float:right;">&nbsp;</div>
		</div>
		<!-- end #content -->
                <div id="sidebar" style="float:right;">
			<ul>
				<li>
                                    <%
                                        String naam="";
                                            try{
                                               naam=session.getAttribute("username").toString().toUpperCase();
                                            }catch(Exception e){} 
                                    %>
                                    <h2>Welcome <%=naam%></h2>
					<p><strong>Donec turpis orci</strong> facilisis et ornare eget, sagittis eu massa. Quisque dui diam, euismod et lobortis sed etiam lorem ipsum dolor etiam nullam et faucibus. <a href="#">More&#8230;</a></p>
				</li>
				<li>
                                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Find Doctor</h2>
					<ul>
						 
					</ul>
				</li>
			</ul>
                                        <br> 
                                            <br> 
                                                <br>
                    <div style="width:270px; height:60px; background: black;padding:40px; border: 1px #1e94b2 solid; position: absolute;left:815px; top:550px;">
           
            <form name="myform" method="post" action="action/find_doc.jsp">
                <input type="radio" name="doc" id="rd1" value="nam" onclick="lod();"/>By Name. &ensp;&ensp;&ensp;&ensp;<input type="text" name="name" id="name" style="display: none;position: absolute;top:40px; left: 140px;"/><input type="image" id="namebtn" src="images/search.gif" style="display: none; height: 24px;width: 24px; position: absolute;top:40px; left: 320px;"/><br>
                    <input type="radio" name="doc" id="rd2" value="spec" onclick="lod();"/>By Specialty&ensp;&ensp;<select name="name1"id="name1" style="background-color: white; display: none;position: absolute;top: 63px; left: 140px; width: 185px; height: 25px;">
                     <%
                         String sql="select distinct department from dep_details";
                         String dep="";
                         DB.DBConnection dbc=new DBConnection();
                         ResultSet rs=dbc.getData(sql);
                         while(rs.next()){
                             dep=rs.getString("department");
                        
                     %>
                     <option><%=dep%></option>
                     <% }%>
                    </select><input type="image" src="images/search.gif" id="namebtn1" style="height: 24px;width: 24px; position: absolute;top:63px; left: 320px; display: none;"/>
            </form>
             </div>        
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>


<!-- end #footer -->
</body>
</html>

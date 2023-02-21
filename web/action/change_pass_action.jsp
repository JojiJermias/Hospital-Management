<%-- 
    Document   : change_pass_action
    Created on : 4 Jan, 2014, 3:22:46 PM
    Author     : IVS PC5
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
           DBConnection dbc=new DBConnection();
              String utype = session.getAttribute("usertype").toString();
              int hid = Integer.parseInt(session.getAttribute("hos_id").toString());
              int uid = Integer.parseInt(session.getAttribute("user_id").toString());
              String cur = request.getParameter("curp");
              String newp = request.getParameter("newp");
              String cnf = request.getParameter("cnfp");
              String sql="update login set password='"+newp+"' where password='"+cur+"' and user_id='"+uid+"'";
              int i=dbc.putData(sql);
              if(i==0){
                  session.setAttribute("Errmsg","Password Updation failed");
                  if(utype.equals("admin")){
                      response.sendRedirect("../change_add_pass.jsp");
                  }else if(utype.equals("cloudadmin")){
                      response.sendRedirect("../change_pass.jsp");
                  }
                  else{
                  response.sendRedirect("../changepass.jsp");
                  }
              }
              else if((i==1)&&(!utype.equals("admin"))&&(!utype.equals("cloudadmin"))){
                  session.setAttribute("Errmsg","");
                  response.sendRedirect("../"+utype+"_home.jsp");
              }
              else if((utype.equals("admin"))&&(i==1)){
                  session.setAttribute("Errmsg","");
                  response.sendRedirect("../hos_admin_home.jsp");
              }
              else if((utype.equals("cloudadmin"))&&(i==1)){
                  session.setAttribute("Errmsg","");
                 JOptionPane.showMessageDialog(null, i);
                  response.sendRedirect("../cloud_admin_home.jsp");
              }
              
              
          
      %>
    </body>
</html>

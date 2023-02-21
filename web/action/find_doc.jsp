<%-- 
    Document   : find_doc
    Created on : 16 Nov, 2013, 9:29:30 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    String nam=request.getParameter("doc");
    
     String name="";
     int i=0;
     DBConnection dbc=new DBConnection();
     ResultSet rs=null;
  //  //JOptionPane.showMessageDialog(null, nam);
    if(nam.equals("nam")){
        name=request.getParameter("name");
        
        String sql="select count(*) from doctor where name='"+name+"'";
        rs=dbc.getData(sql);
        while(rs.next()){
            i=rs.getInt(1);
           // //JOptionPane.showMessageDialog(null, i);
        }
        if(i==1){
            response.sendRedirect("../show_doct.jsp?na="+name);
        }else if(i>1){
            
        }else{
            response.sendRedirect("../hos_admin_home.jsp");
        }
        
    }else{
        name=request.getParameter("name1");
        String doct="";
        String sql="select name from doctor where department='"+name+"'";
        rs=dbc.getData(sql);
        while(rs.next()){
            doct=doct+rs.getString("name")+"-";
            //JOptionPane.showMessageDialog(null, doct);
        }
        if(doct.length()>1){
            response.sendRedirect("../show_alldoct.jsp?na="+doct);
        }else{
            //JOptionPane.showMessageDialog(null, "No doctors available");
             response.sendRedirect("../hos_admin_home.jsp");
        }
         
    }
    ////JOptionPane.showMessageDialog(null, name);
   %>

<%-- 
    Document   : add_medicine_action
    Created on : 22 Dec, 2013, 4:45:10 PM
    Author     : IVS PC5
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>

<%
    int p=0;
    int st=0;
    String name=request.getParameter("Name");
    int Stock=Integer.parseInt(request.getParameter("stock"));
    int prize=Integer.parseInt(request.getParameter("prize"));
   JOptionPane.showMessageDialog(null, name+"  "+Stock+"  "+prize);
    int h_id=Integer.parseInt(session.getAttribute("hos_id").toString());
    JOptionPane.showMessageDialog(null, h_id);
    DB.DBConnection dbc=new DBConnection();
    String sq="select * from medicine where name='"+name+"'";
    ResultSet rs=dbc.getData(sq);
    if(rs.next()){
        p=rs.getInt("prize");
        st=rs.getInt("stock");
        Stock=Stock+st;
        String ss="update medicine set prize='"+prize+"',stock='"+Stock+"' where name='"+name+"'";
        dbc.putData(ss);
    }else{
        String sql="insert into medicine(name,prize,stock,hospital_id) values('"+name+"','"+prize+"','"+Stock+"','"+h_id+"')";
    dbc.putData(sql);
    }
    
    response.sendRedirect("../add_medicine.jsp");
%>
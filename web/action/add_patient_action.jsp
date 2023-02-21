<%-- 
    Document   : add_patient_action
    Created on : 21 Dec, 2013, 11:48:58 AM
    Author     : IVS PC5
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>

<%
    //int num=0;
    String status="";
    String datee="";
    String date=DateTime.DateTime.getCurrentDate();
    int pid=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    String cun_doc=request.getParameter("cunsult");
      int hid=Integer.parseInt(session.getAttribute("hos_id").toString());
            int cun_id=Integer.parseInt(request.getParameter("cun_id"));
            String dep=request.getParameter("Department");
            JOptionPane.showMessageDialog(null, pid+"  "+name+"  "+cun_doc+"  "+cun_id+"  "+dep);
    String sql="select * from patients where name='"+name+"' and id='"+pid+"'";    
    DB.DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    if(rs.next()){
        
      status=rs.getString("status");
      datee=rs.getString("date");
    }else{
        JOptionPane.showMessageDialog(null, "Invalid Id");
        response.sendRedirect("../receptionist_home.jsp");
    }
    if(status.equals("admit")){
        //JOptionPane.showMessageDialog(null, "No permission");
        response.sendRedirect("../receptionist_home.jsp");
    }else if(status.equals("discharge")){
        //num=num++;
        //JOptionPane.showMessageDialog(null,"table"+ date);
         String sso="update patients set cur_doc='"+cun_doc+"',cur_doc_id='"+cun_id+"' where id='"+pid+"'";
         String ss1="update login set hospital_id='"+hid+"' where user_id='"+pid+"'";
         String ss2="update patients set status='admit',date='"+datee+"',cur_date='"+date+"' where id='"+pid+"'";
         dbc.putData(sso);
         dbc.putData(ss1);
         dbc.putData(ss2);
          response.sendRedirect("../receptionist_home.jsp");
    }
    
            
%>
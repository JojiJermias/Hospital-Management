<%-- 
    Document   : findfee
    Created on : Jun 17, 2016, 11:26:26 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <body>
      <%
          String name=""; 
          int cur_id=0,hid=0;
          int bal=0; 
          int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
          int id=Integer.parseInt(request.getParameter("q"));
          String sq="select * from patients where id='"+id+"'";
          DBConnection dbc=new DBConnection();
          ResultSet rs=dbc.getData(sq);
          while(rs.next()){
              name=rs.getString("name");
              cur_id=rs.getInt("cur_doc_id");
              ////JOptionPane.showMessageDialog(null, name);
          }
          String sql="select * from doctor where id='"+cur_id+"'";
          ResultSet ra=dbc.getData(sql);
          while(ra.next()){
              hid=ra.getInt("hospital_id");
          }
          String ss="select balance from purchase_list where patient_id='"+id+"' and hospital_id='"+hos_id+"'order by id desc limit 1";
          ResultSet rr=dbc.getData(ss);
          while(rr.next()){
             bal=rr.getInt(1);
            // //JOptionPane.showMessageDialog(null, bal);
          }
          //session.setAttribute("pnam",name);
          if((name.length()>1)&&(hid==hos_id)){
      %>
      
      <label for="Experience">Patient Name:</label>
      <input type="text" value="<%=name%>" name="p_name">
    <%-- <span name="regexp" id="regexp" style="display:none;color:red"><median>invalid Name</median> </span>  --%>
    <label for="Experience">Amount to Pay:</label>
    <input type="text" id="bal" value="<%=bal%>" name="bal">
    <label for="Experience">Paid Amount:</label>
    <input type="text" id="amnt" name="amnt" required><%--<span name="regexp" id="amn" style="display:none;color:red"><median>invalid amount</median> </span> --%> 
    <input type="submit" value="Search" onclick="return validation()"/>
      <%}else if((name.length()>1)&&(hid!=hos_id)){%>
      <font style="color: red;">Access Denied</font>
      <%}%>
    </body>


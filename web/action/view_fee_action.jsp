<%-- 
    Document   : view_fee_action
    Created on : 6 Jan, 2014, 10:29:11 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    try{
        
   
    String amn="";
   String filename="";
            String key="";
            int pass=0;
            ResultSet rs=null,rss=null,rt=null,rss1=null;
            int p_id=Integer.parseInt(request.getParameter("pid"));
            session.setAttribute("pat_id",p_id);
            String name=request.getParameter("p_name");
            session.setAttribute("pat_name",name);
            amn=request.getParameter("amnt");
            session.setAttribute("pay",amn);
            int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String type=session.getAttribute("usertype").toString();
            String ss="select * from purchase_list where patient_id='"+p_id+"' and hospital_id='"+hos_id+"' order by id";
            int user_id=Integer.parseInt(session.getAttribute("user_id").toString());
            
            DBConnection dbc=new DBConnection();
            rs=dbc.getData(ss);
            int id=0;
            String date="";
            String time="";
            int amnt=0;
            String pay="";
            int bal=0; 
            while(rs.next()){
                id=rs.getInt(1);
                date=rs.getString(4);
                time=rs.getTime(5).toString(); 
                amnt=rs.getInt(6);
                pay=rs.getString(7);
                bal=rs.getInt(8);
                ////JOptionPane.showMessageDialog(null, bal);
            }
            int due=bal-Integer.parseInt(amn);
            String ssa="update purchase_list set pay='"+amn+"',balance='"+due+"' where id='"+id+"'";
            dbc.putData(ssa);
            session.setAttribute("balnc",bal);
    response.sendRedirect("../fee_display.jsp");
     }catch(Exception e){
       response.sendRedirect("../fee_display.jsp");
    }
        %>
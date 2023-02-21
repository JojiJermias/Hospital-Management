<%-- 
    Document   : patient_register_action
    Created on : Jun 16, 2016, 4:26:16 PM
    Author     : IVS PC5
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             ResultSet rs=null,r=null;
          int id=0;
           int ran=(int)(Math.random()*100);
           ran+=100;
           int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String name=request.getParameter("name");
            String cun_doc=request.getParameter("cunsult");
            String cun_id=request.getParameter("cun_id");
            String dep=request.getParameter("Department");
            String bg=request.getParameter("bg");
             String hos=request.getParameter("House");
            String qual=request.getParameter("Place");
            String dob=request.getParameter("dob");
            String gen=request.getParameter("gender");
            String exp=request.getParameter("Post");
             String dist=request.getParameter("District"); 
            String mob=request.getParameter("mobilenumber");
            String email=request.getParameter("email");
            String date=DateTime.DateTime.getCurrentDate();
            DBConnection dbc=new DBConnection();
             String s="select * from patients where mobile='"+mob+"' or email='"+email+"'";
           r=dbc.getData(s);
           if(r.next()){
              
               JOptionPane.showMessageDialog(null, "Already exists","Error",JOptionPane.INFORMATION_MESSAGE);
               
             
           response.sendRedirect("../patient_registration.jsp");
           }else{
           String sql="insert into patients(name,cun_doc,cur_doc,cun_doc_id,cur_doc_id,department,bloodgp,house,place,post,district,mobile,email,status,hospital_id,date,cur_date) values ('"+name+"','"+cun_doc+"','"+cun_doc+"','"+cun_id+"','"+cun_id+"','"+dep+"','"+bg+"','"+hos+"','"+qual+"','"+exp+"','"+dist+"','"+mob+"','"+email+"','admit','"+hos_id+"','"+date+"','"+date+"')";
           int i=dbc.putData(sql);        
           if(i>0){
              String sq1="select id from patients where mobile='"+mob+"' and email='"+email+"'";
              rs=dbc.getData(sq1);
              while(rs.next()){
                  id=rs.getInt("id");
              }
              String pass=id+ran+mob.substring(3,7);
               String sql2="insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+id+"','"+pass+"','patient','0','"+hos_id+"','"+id+"')";
               System.out.println("insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+id+"','"+pass+"','patient','0','"+hos_id+"','"+id+"')");
              String result=Mail.Sendmail.sendMail(email,"Login Details", "You have successfully registered\n Your Username is "+id+" \n Your Password is "+pass+"");
               
               dbc.putData(sql2);
               String key="DOFRRCEM"+id+hos_id+cun_id;
        if(key.length()>12){
            key=key.substring(0,12);
        }System.out.println("Code is here");
             String enc=Privacy.file.create(name,id, cun_id, cun_id, dep,bg, hos, qual,dob,gen, exp, dist, mob, email, hos_id,key);
             System.out.println("Reached here");
             session.setAttribute("personal",enc);
             String filename="P"+id+"E"+hos_id;
             session.setAttribute("filename",filename);
             //String date=DateTime.DateTime.getCurrentDate();       
             String time=DateTime.DateTime.getCurrentTime();     
             String sq="insert into personal_file(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,times,dates,kee) values('"+name+"','"+id+"','"+filename+"','"+hos_id+"','"+cun_doc+"','"+cun_id+"','"+time+"','"+date+"','"+key+"')";
            JOptionPane.showMessageDialog(null,"inserting");
             dbc.putData(sq);
             response.sendRedirect("file_upload_action.jsp");
           } }
//           response.sendRedirect("../receptionist_home.jsp");         
        %>
    </body>
</html>

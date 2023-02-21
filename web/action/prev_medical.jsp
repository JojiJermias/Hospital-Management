<%-- 
    Document   : prev_medical
    Created on : 30 Dec, 2013, 6:37:00 PM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>

<%
    DBConnection dbc=new DBConnection();
    ResultSet rt=null;
     String filename="";
            String key="";
            int p_id=0;
    int num=Integer.parseInt(session.getAttribute("number").toString());
    //JOptionPane.showMessageDialog(null, num);
    String utype=session.getAttribute("usertype").toString();
    if(num==1){
        //JOptionPane.showMessageDialog(null, "No previous report");
            if(utype.equals("doctor")){
                response.sendRedirect("../view_medical.jsp");     
            }else{
                 response.sendRedirect("../view_medical_p.jsp");     
            }
            
    }
    else{
        num--;
        session.setAttribute("number",num);
    if(utype.equals("doctor")){
        p_id=Integer.parseInt(session.getAttribute("pat_id").toString());
    }else{
         p_id=Integer.parseInt(session.getAttribute("user_id").toString());
    }
    
    //JOptionPane.showMessageDialog(null, num+"  "+p_id);
     String sss="select * from medical_file where patient_id='"+p_id+"' and number='"+num+"'";
               // //JOptionPane.showMessageDialog(null, sss);
                rt=dbc.getData(sss);
                String doc_name="";
                int doc_id=0;
                int hosp_id=0;
                String time="";
                String date="";
                
                while(rt.next()){
                    filename=rt.getString("filename");
                    //JOptionPane.showMessageDialog(null,"hrlllllll"+ filename);
                    key=rt.getString("kee");
                    hosp_id=rt.getInt("hospital_id");
                   doc_name=rt.getString("doctor");
                   doc_id=rt.getInt("doctor_id");
                   time=rt.getTime("time").toString();
                   date=rt.getString("date");
                   
                }
                        session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        session.setAttribute("hosp_id",hosp_id);
                        session.setAttribute("re_doc", doc_name);
                        session.setAttribute("re_doc_id",doc_id);
                        session.setAttribute("time",time);
                        session.setAttribute("date",date);
                         response.sendRedirect("medical_down_action.jsp");
    }
                       
              
                        
%>
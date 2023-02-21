<%-- 
    Document   : medicine_list
    Created on : Jun 17, 2016, 11:31:38 AM
    Author     : IVS PC5
--%>

<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>

<%
    try{
    DBConnection dbc=new DBConnection();
    String ssa="";
    String sa="";
            String med;
            int bal=0;
            int s;
            int j=0;
            int total=0;
            int stock=0,prize=0;
            int pid=Integer.parseInt(session.getAttribute("pat_id").toString());
            int hid=Integer.parseInt(session.getAttribute("hos_id").toString());
            String ss=request.getParameter("q");
         //   //JOptionPane.showMessageDialog(null,ss);
            String aa[]=ss.split(",");
            for(int i=0;i<aa.length;i++){
                if(aa[i].length()>2){
                   // //JOptionPane.showMessageDialog(null,aa[i]);
                    String a[]=aa[i].split(":");
                     med=a[0];
                     ssa=a[1];
               s=Integer.parseInt(a[1]);
                   // //JOptionPane.showMessageDialog(null, med+"   "+s);
                    String sql="select * from medicine where name='"+med+"' and hospital_id='"+hid+"'";
                    ResultSet rs=dbc.getData(sql);
                    if(rs.next()){
                        prize=rs.getInt("prize");
                        stock=rs.getInt("stock");
                        int rem=stock-s;
                        if(rem>=0){
                             sa="update medicine set stock='"+rem+"' where name='"+med+"' and hospital_id='"+hid+"'";
                        total=total+(prize*s);
                        dbc.putData(sa);
                        }else{
                            sa="update medicine set stock='0' where name='"+med+"' and hospital_id='"+hid+"'";
                            total=total+(prize*stock);
                            dbc.putData(sa);
                        }
                        
                       // //JOptionPane.showMessageDialog(null, prize+"   "+stock+" "+total);
                       
                        
                    }
                }
                ////JOptionPane.showMessageDialog(null, prize+"   "+stock);
            }
           
            ////JOptionPane.showMessageDialog(null, total);
            String date=DateTime.DateTime.getCurrentDate();       
             String time=DateTime.DateTime.getCurrentTime();   
             String sl="select balance from purchase_list where patient_id='"+pid+"' and hospital_id='"+hid+"' order by id desc limit 1";
             ResultSet rr=dbc.getData(sl);
             while(rr.next()){
                 bal=rr.getInt(1);
                // //JOptionPane.showMessageDialog(null,"balance  "+ bal);
             }
             bal=bal+total;
             if(total!=0){
                 String sq="insert into purchase_list (patient_id,hospital_id,date,time,amount,pay,balance) values('"+pid+"','"+hid+"','"+date+"','"+time+"','"+total+"','0','"+bal+"')";
                ////JOptionPane.showMessageDialog(null, sq);
                 j=dbc.putData(sq);
             }
             if(j==1){
                 
             }
            
      
           response.sendRedirect("view_medicine1.jsp");
    }catch(Exception e){
        System.out.println(e);
        response.sendRedirect("view_medicine1.jsp");
    }
%>
   
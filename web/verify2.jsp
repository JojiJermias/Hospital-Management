
<%@page import="DB.insurance"%>

<%@page import="DB.DBConnection"%>
<%-- 
    Document   : RegisterAction.
    Created on : Jun 17, 2016, 11:49:08 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String p_id=request.getParameter("p_id");
  
    String h_id=request.getParameter("h_id");
   
   String d_id=request.getParameter("d_id");
   
    int h_id2=Integer.parseInt(h_id);
     int d_id2=Integer.parseInt(d_id);
     int p_id2=Integer.parseInt(p_id);
    
    DBConnection ob=new DBConnection();
    
    insurance  in=new insurance();
    
    int i=0,j=0;
    
    i=ob.update(h_id2,d_id2,p_id2);
     
    if(i>0)
    { 
        j=in.update(h_id2,d_id2,p_id2);
        if(j>0)
        {
     String site="hos_admin_home.jsp";
     response.setStatus(response.SC_MOVED_TEMPORARILY);
     response.setHeader("Location", site);
        }
        else
        {
              String site="hos_admin_home.jsp";
     response.setStatus(response.SC_MOVED_TEMPORARILY);
     response.setHeader("Location", site);
            
        }
    }
  else
    {
        
   }
   

   
%> 
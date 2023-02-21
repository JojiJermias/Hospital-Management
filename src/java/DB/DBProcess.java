/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
//import javax.swing.//JOptionPane;

public class DBProcess {
    
public static boolean registration(String name,String desg,String dep,String email,String phone,String Gid)
    {
            boolean flag=false;
             ResultSet rs=null;
             int count=0;
               try {
                   DBConnection db1=new  DBConnection();
                 String sq="select id from login";
                 rs=db1.getData(sq);
                 while(rs.next()){
                      count=rs.getInt(1);
                 }
                count=count+1;
               String uname=name+""+count;
            String sql="insert into register(name,designation,department,email,phone,GID) values('"+name+"','"+desg+"','"+dep+"','"+email+"','"+phone+"','"+Gid+"')";
              String sql1="insert into login (username,password,usertype) values('"+uname+"','"+uname+"','user')";
            
              int result=db1.putData(sql);
               int result1=db1.putData(sql1);
             if(result>0&& result1>0){
                 flag=true;
               }
               
               db1.DBClose();
                  
               }

               catch(Exception e)
               {
                   e.printStackTrace();
               }

               return flag;
    }
   public static String loginCheck(String uname,String pass)
    {
        String reply="";
               try {
            String sql="select * from login where uname='"+uname+"' and password= '"+pass+"' ";
                 
            DBConnection db=new  DBConnection();
            ResultSet rs=db.getData(sql);
            if(rs.next())
            {
                String ut=rs.getString("usertype");
                int st=rs.getInt("status");
                if(ut.equals("admin"))
                {
                    reply="admin";
                }
                else
                {
                    if(st==1)
                    {
                     if(ut.equals("user"))
                     {
                         reply="user";
                     }
                     if(ut.equals("student")){
                         reply="student";
                     }
                    }
                    else if(st==0)
                    {
                        reply="blocked";
                    }
                }

            }else
            {
                reply="invalid";
            }
            db.DBClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reply;
    }
public static boolean changePass(String user,String oldpass,String newpass)
{
    boolean flag=false;
    try {
        String sql="update login set password='"+newpass+"' where username='"+user+"' and password='"+oldpass+"'";
        DBConnection db=new DBConnection();
        int i=db.putData(sql);
        if(i>0)
        {
            flag=true;
        }
        db.DBClose();
    } catch (Exception e) {
        e.printStackTrace();
    }
return flag;
}
public static int FindUser(String mail,String phone){
    int i=1;
    try{
    String sql="select * from register where email='"+mail+"' and phone='"+phone+"'";
    ////JOptionPane.showMessageDialog(null,"sjdghfksdj"+sql);
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    if(rs.next()){
        i=0;
    }
    }catch(Exception ee){
        System.out.println(ee);
    }
    return i;
}
public static String FindGid(String name,String mail,String phone){
    String id="";
    try{
    String sql="select * from register where name='"+name+"' or email='"+mail+"'or phone='"+phone+"'";
    ////JOptionPane.showMessageDialog(null,"sjdghfksdj"+sql);
   
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    if(rs.next()){
        id=rs.getString("GID");
    }
    }catch(Exception ee){
        System.out.println(ee);
    }
    return id;
}
public static int getUserStatus(String username)
{
int i=-1;
    try {
        String sql="select status from register where name='"+username+"'";
        System.out.println("Querry>"+sql);
        DBConnection dbc=new DBConnection();
        ResultSet rs=dbc.getData(sql);
        if(rs.next())
        {
            i=rs.getInt("status");
            System.out.println("st>>>"+i);

        }
        dbc.DBClose();
    }
    catch (Exception e) {
        e.printStackTrace();
    }
return i;
}
public static int getFileStatus(String username)
{
int i=-1;
    try {
        String sql="select status from Uploaded_files where filename='"+username+"'";
        System.out.println("Querry>"+sql);
        DBConnection dbc=new DBConnection();
        ResultSet rs=dbc.getData(sql);
        if(rs.next())
        {
            i=rs.getInt("status");
            System.out.println("st>>>"+i);

        }
        dbc.DBClose();
    }
    catch (Exception e) {
        e.printStackTrace();
    }
return i;
}

public static void toggleUserStages(String username,int st)
{
    try {
        String sql="update register set status="+st+" where name='"+username+"'";
        System.out.println("Querry>"+sql);
        DBConnection dbc=new DBConnection();
        dbc.putData(sql);

        dbc.DBClose();
    } 
    
    catch (Exception e) {
        e.printStackTrace();
    }
}
public static void toggleFileStages(String username,int st)
{
    try {
        String sql="update Uploaded_files set status="+st+" where filename='"+username+"'";
        System.out.println("Querry>"+sql);
        DBConnection dbc=new DBConnection();
        dbc.putData(sql);

        dbc.DBClose();
    } 
    
    catch (Exception e) {
        e.printStackTrace();
    }
}
public static void deleteUser(String username,String email)
{
    try {
        DBConnection  dbc= new DBConnection();
        ResultSet rs=null;
        int id=0;
        String sq="select id from register where name='"+username+"' and email='"+email+"'";
        rs=dbc.getData(sq);
        while(rs.next()){
            id=rs.getInt(1);
        }
        String sql="delete from login where id='"+id+"'";
        String str="delete from register where name='"+username+"'";
        
        dbc.putData(sql);
         dbc.putData(str);
         dbc.DBClose();
    } catch (Exception e) {
        e.printStackTrace();
    }
}

public static void  multiData(String abspath,String fname,int size,String st,String date,String time,String fileId)
{
    try{
        String ss=size+" bytes";      
        String sql="insert into Uploaded_files(filename,filepath,filesize,username,date,time,fileid) values('"+fname+"','"+abspath+"','"+ss+"','"+st+"','"+date+"','"+time+"','"+fileId+"')";
        ////JOptionPane.showMessageDialog(null, sql);
        DBConnection db=new DBConnection();
        db.putData(sql);
        db.DBClose();
          }
    catch(Exception e)
       {
        //JOptionPane.showMessageDialog(null,e);
        e.printStackTrace(); 
       }  
}

public static ResultSet selMultiData(String selectstr) throws SQLException
{   
    String sql="select * from multidata where name='"+selectstr+"'";
   
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
   // //JOptionPane.showMessageDialog(null, rs);
    return rs;  
}

public static int selectRank(String name) throws SQLException
{
    int i=0;
    String sql="select rank from multidata where name='"+name+"'";
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    while(rs.next())
    {
       i=rs.getInt("rank"); 
    }
    return i;
    
}

public static void updateRank(int rank,String name)
{
    try{
        String sql="update multidata set rank='"+rank+"' where name='"+name+"' ";
        DBConnection db=new DBConnection();
        db.putData(sql);
        db.DBClose();
          }
    catch(Exception e)
       {
          e.printStackTrace(); 
       }
 
    
}
public static ResultSet Ranking(int rank) 
{
   
    String sql="select name from multidata where rank='"+rank+"'";
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    
    return rs;
    
}
public static ResultSet updatePassword()
{
    String Sql="select * from login";
    DBConnection db=new DBConnection();
    ResultSet rs=db.getData(Sql);
    return rs;
}
public static String selectAdminname() throws SQLException
{
    String admin="";
    String Sql="select * from login where usertype='admin'";
    DBConnection db=new DBConnection();
    ResultSet rs=db.getData(Sql);
    if(rs.next())
    {
        admin=rs.getString("uname");
                
    }
    return admin;
}

public static ResultSet getEmailid() throws SQLException{
String mail="";
 ResultSet rs=null;
   
        String sql="select mail from register ";
       
        DBConnection dbc=new DBConnection();
        rs=dbc.getData(sql);

return rs;
}
public static ResultSet getUserEmailid(String user) throws SQLException{
String mail="";
 ResultSet rs=null;

        String sql="select mail from register where user='"+user+"'";

        DBConnection dbc=new DBConnection();
        rs=dbc.getData(sql);



return rs;
}
public static int enterDownload(String filename,String size,String user,String mail,String date,String time){
    int j=3;
    int i=3;
    String sql="insert into Download_files(filename,filesize,username,email,date,time)values ('"+filename+"','"+size+"','"+user+"','"+mail+"','"+date+"','"+time+"')";
    
    DBConnection dbc=new DBConnection();
   
        i=dbc.putData(sql);
    
   
    
    return i;
}
public static ResultSet CheckData(String name) 
{
    ResultSet rs = null;
    String sql="select * from Uploaded_files where filename='"+name+"'";
     DBConnection dbc=new DBConnection();
    rs=dbc.getData(sql);
    return rs;
}
public static void deleteHistory(String fname)
{
     String str="delete from DownloadHistory where filename='"+fname+"'";
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
public static void deleteHistoryD(String fname,String ad,String un)
{
    String str = null;
    if(ad.equals("admin")){
      str="delete from DownloadHistory where date='"+fname+"'";  
    }
    else{
        str="delete from UserDownloadHistory where date='"+fname+"' and username='"+un+"'";  
    }
     ////JOptionPane.showMessageDialog(null, fname);
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
public static void deleteHistoryD(String fname,String time,String ad,String un)
{
     int ii=Integer.parseInt(time.substring(0,2));
     int ij=1;
     int pp=ii-ij;
     String str;
     String po=String.valueOf(pp);
     if(po.length()==1){
         po="0"+po;
     }
     po=po+time.substring(2,time.length());
    if(ad.equals("admin")){
      str="delete from DownloadHistory where date='"+fname+"' and time between '"+po+"' and '"+time+"'";  
    }
    else{
        str="delete from UserDownloadHistory where username='"+un+"' and date='"+fname+"' and time between '"+po+"' and '"+time+"' ";
    }
   
     ////JOptionPane.showMessageDialog(null, fname);
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
public static void deleteHistoryD2(String fname,String time,String ad,String un)
{
     int ii=Integer.parseInt(time.substring(0,2));
     int ij=2;
     int pp=ii-ij;
     String str;
     String po=String.valueOf(pp);
     if(po.length()==1){
         po="0"+po;
     }
     po=po+time.substring(2,time.length());
     if(ad.equals("admin")){
      str= "delete from DownloadHistory where date='"+fname+"' and time between '"+po+"' and '"+time+"' ";
    }
    else{
        str= "delete from UserDownloadHistory where username='"+un+"' and date='"+fname+"' and time between '"+po+"' and '"+time+"' ";
    }
    
     ////JOptionPane.showMessageDialog(null, fname);
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
public static void deleteHistoryD4(String fname,String time,String ad,String un)
{
     int ii=Integer.parseInt(time.substring(0,2));
     int ij=4;
     int pp=ii-ij;
     String str;
     String po=String.valueOf(pp);
     if(po.length()==1){
         po="0"+po;
     }
     po=po+time.substring(2,time.length());
    if(ad.equals("admin")){
      str= "delete from DownloadHistory where date='"+fname+"' and time between '"+po+"' and '"+time+"' ";
    }
    else{
        str= "delete from UserDownloadHistory where username='"+un+"' and date='"+fname+"' and time between '"+po+"' and '"+time+"' ";
    }
     
     ////JOptionPane.showMessageDialog(null, fname);
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
public static void deleteHistorys(String ad,String un)
{
     String str;
      if(ad.equals("admin")){
      str="delete from DownloadHistory";
    }
    else{
        str="delete from UserDownloadHistory where username='"+un+"'";
    }
     
     DBConnection db=new DBConnection();
     db.putData(str);
     db.DBClose();
}
}
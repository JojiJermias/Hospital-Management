package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class insurance 
{
    Connection con;
    public insurance() 
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance.","root","");
            System.out.println("Connected"+con);
            
        }
        catch(Exception e)
        {
            System.out.println("Exception is"+e);
        } 
    }
    
    public int update(int h_id2,int d_id2,int p_id2)
{
    int j=0;
        try {
            
            String status="VERIFIED";
            String sql="UPDATE `register` SET `status`='"+status+"' WHERE HosId='"+h_id2+"' and d_id='"+d_id2+"' and p_id='"+p_id2+"'";
            java.sql.PreparedStatement ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
              
        } 
        catch (SQLException ex)
        {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return j;
}
    
    
}
 
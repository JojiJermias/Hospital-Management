/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
//import javax.swing.//JOptionPane;


/**
 *
 * @author User
 */
public class DBConnection 
{
    public Statement st=null;
    public ResultSet rs=null;
    public Connection con=null;

    public DBConnection()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phr","root","");
            st=con.createStatement();
            }catch (Exception e)
            {
            //JOptionPane.showMessageDialog(null, e);
            e.printStackTrace();
            }
    }

    public ResultSet getData(String sql)
    {
            try 
            {
                rs=st.executeQuery(sql);
            } catch (Exception e) 
            {
                e.printStackTrace();
            }
            return rs;
    }

    public int putData(String sql)
    {
        int i=-1;
        try
        {
             i=st.executeUpdate(sql);
        }catch (Exception e) 
        {
            //JOptionPane.showMessageDialog(null,"putdata-----"+e);
            e.printStackTrace();
        }
        return i;
    }

    public void DBClose()
    {
        try 
        {
            con.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}

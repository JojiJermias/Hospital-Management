package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//import javax.swing.//JOptionPane;
public class DummyDB {
    
    Connection con=null;
	private int totalCountries;
	String convrtd;
	private ArrayList<String> countries=new ArrayList<String>();

    public DummyDB() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/privacy_ABE", "root","");
        } catch (Exception ex) {
           //JOptionPane.showMessageDialog(null, ex);
        }
        
    } 
	
        
	
	public List<String> getData(String query) {
        try {
           // String q1=hexconverpackage.stringToHex(query);
            //String gh="distinct name from multidata where name like '"+query+"%' order by rank desc";
           // //JOptionPane.showMessageDialog(null,gh );
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select distinct filename from Uploaded_files where filename like '"+query+"%'");
             ////JOptionPane.showConfirmDialog(null, "select distinct name from multidata order by rank desc");
             while(rs.next())
              {
                //  //JOptionPane.showMessageDialog(null,"dfd");        
                  /*String adname=DBProcess.selectAdminname();
                  String s=rs.getString(1);
                 //JOptionPane.showMessageDialog(null, s);
                  String org=rs.getString(1);
                  convrtd=hexconverpackage.hexToString(org,adname); 
                  int g=convrtd.indexOf(query);
                  //JOptionPane.showMessageDialog(null, g);
                  if((convrtd.indexOf(query))==0){*/
                     
  
                      ////JOptionPane.showMessageDialog(null, convrtd);
                  countries.add(rs.getString(1));
                 // //JOptionPane.showMessageDialog(null,countries);
                  }
              }
             
            // //JOptionPane.showMessageDialog(null, countries.size());
            
      
        catch (Exception ex) {
            //JOptionPane.showMessageDialog(null, ex);
            
        }
            return countries;
		
	}
     
}

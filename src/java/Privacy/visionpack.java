/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Privacy;

//import javax.swing.//JOptionPane;


public class visionpack {
    
    public static String keys(String val){
        
        ////JOptionPane.showMessageDialog(null,"xxxxxx"+ val);
        StringBuffer str=new StringBuffer(val);                
        String key=str.reverse().toString();
        
        
        String orgkey=val+key;
        orgkey=orgkey.substring(0,16);
        ////JOptionPane.showMessageDialog(null, orgkey);
       return orgkey;
    }
    
}

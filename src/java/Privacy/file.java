/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Privacy;

import static Privacy.vb.decrypt;
//import javax.swing.//JOptionPane;

/**
 *
 * @author prasanth
 */
public class file {
    public static void main(String[] args) {
        file f=new file();
       // f.create();
    }
 public static String create(String name,int id,String cid,String crid,String dep,String bg,String ho,String pl,String dob,String gen,String po,String dis,String mo,String em,int hid,String key) throws Exception{
        String fil="Patients Id: "+id+"\nPatients Name: "+name+"\nDepartment: "+dep+"\nBlood Group: "+bg+"\nHouse: "+ho+"\nPlace: "+pl+"\nDate of Birth: "+dob+"\nGender: "+gen+"\nPost Office: "+po+"\nDistrict: "+dis+"\nMobile: "+mo+"\nEmail: "+em;
        System.out.println(fil);
        
        String orgnl=visionpack.keys(key);
       // //JOptionPane.showMessageDialog(null, fil);
       String enc= vb.encrypt(fil,orgnl);
       System.out.println("Encrypted String: "+enc);
       return enc;
    }

}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Privacy;

import java.math.BigInteger;
//import javax.swing.//JOptionPane;

/**
 *
 * @author prasanth
 */
public class ID_Gen {
    public static String ID(String nan,String Pn){
        int num=(int) (Math.random()*255);
        System.out.println(""+num);
        int a[]=new int[nan.length()];
        String str="";
        BigInteger ph=new BigInteger(Pn);
       
        for(int i=0;i<nan.length();i++){
            a[i]=nan.charAt(i);
            str=str+a[i];
        }
        BigInteger s=new BigInteger(str);
        BigInteger sum=ph.add(s);
        String val=sum.toString();
        String sx=num+""+val+""+num;
        sx=sx.substring(0,12);
        return sx;
        
    }
    public static void main(String[] args) {
       
        String val=ID("prasanth","9496801158");
      
        System.out.println(val);
        ////JOptionPane.showMessageDialog(null, val);
    }
}

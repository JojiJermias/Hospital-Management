package Privacy;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.security.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
//import javax.swing.//JOptionPane;
import sun.misc.*;

/**
 *
 * @author binoy
 */
public class vb {
    

     private static final String ALGO = "AES";
   

public static String encrypt(String Data,String k) throws Exception {
    ////JOptionPane.showMessageDialog(null,"Dataaa---- "+Data);
   // //JOptionPane.showMessageDialog(null, "hai");
    System.out.println("keeeeeeeeeee"+k);
      //  //JOptionPane.showMessageDialog(null,"k---- "+k);
 
        Key key = generateKey(k);
         //   //JOptionPane.showMessageDialog(null,"Key---- "+key);

        //decrypt(Data, key);
        System.out.println(key);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        // //JOptionPane.showMessageDialog(null,encryptedValue+" eeeeeeeeeee thalaaaaa "+key);
      // String sos=decrypt(encryptedValue,k);
      
        return encryptedValue;
    }
    public static String decrypt(String encryptedData,String k) throws Exception {
        String decryptedValue="";
        try{
        Key key = generateKey(k);
        ////JOptionPane.showMessageDialog(null,"insideee keyyyy"+ key);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
        byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
        byte[] decValue = c.doFinal(decordedValue);
        decryptedValue = new String(decValue);
       ////JOptionPane.showMessageDialog(null,decryptedValue+"decrpteddd..");
       
        }catch(Exception e){
            //JOptionPane.showMessageDialog(null, e);
        }
         return decryptedValue;
    }
    private static Key generateKey(String dda) throws Exception {
        byte[] b1=dda.getBytes();
        Key key = new SecretKeySpec(b1, ALGO);
        ////JOptionPane.showMessageDialog(null,"keyyyyyyyyssssss"+ key);
        return key;
}

    public static void main(String[] args) throws Exception {
     String ss=decrypt("eYT9AkR/vgM4b0jxUaUQ5Tm2Y2EfMJ6TrBTEW1hF9S/ZdtdqifKlJHYWQSz9OHMXNZoC9CeUE28H\n" +
"Wo/HHb6ysER0UQ808/XabdpziJxYbdHGFRsT25vg4Lhm4n4B7XJCxEHVxJFIbTDHMs7yYwx5nzOp\n" +
"o0jsZfGyK3GjokF0T6paUEfdfXWQiHOUKxFEziOefSXBA1VRDbgsgJlo/YuXVaciF1zjDMROrAo7\n" +
"TxzRlLPIb5EBk5P+DvlpRRKsWyCpNTRSZbZO3VW1RmzrnPXE7yllMVpQWD1fqjtH9OhBiwA=", "1234567890123456");
        System.out.println("ggg: "+ss);
    }

}



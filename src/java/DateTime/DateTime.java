/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DateTime;
import java.util.Date;
/**
 *
 * @author kites
 */
public class DateTime {
    public static String getCurrentDate()
    {
        Date d=new Date();
        int dd=d.getDate();
        int mm=d.getMonth()+1;
        int yy=d.getYear()+1900;
        String date=dd+"/"+mm+"/"+yy;
        return date;

    }
    public static String getCurrentTime()
    {
        Date d=new Date();
        int hh=d.getHours();
        int mn=d.getMinutes();
        int ss=d.getSeconds();
        String time=hh+":"+mn+":"+ss;
        return time;

    }


}

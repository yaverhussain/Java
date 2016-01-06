package test;

import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;



public class Main {
    
    public static void main(String[] args) {
        
        Date d = null;
        
        DateTime dt = new DateTime(d);
        DateTimeFormatter fmt = ISODateTimeFormat.dateTime();
        String str = fmt.print(dt);
        System.out.println(str);
       
        
        
    }
}

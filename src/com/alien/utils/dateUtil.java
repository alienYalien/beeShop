package com.alien.utils;


import java.util.Date;  
import java.sql.Timestamp;
import java.text.SimpleDateFormat;  

public class dateUtil {

/**
 * 将datetime转换成String
 * @param datetime
 * @return
 */
	public static String datetime2String(String datetime)
	{  
//		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");   
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");  
        String dateStr=sdf.format(datetime);
        return dateStr;
	}  
	
/**
 * 将Date转换成String
 * @param date
 * @return
 */
public String date2String(Date date) {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateStr = sdf.format(date);
    return dateStr;
}
 
/**
 * 将Timestamp转换成String
 * 用于数据库中字段类型为datetime
 * @param timestamp
 * @return
 */
public String time2String(Timestamp timestamp) {
    Date date = new Date(timestamp.getTime());
    String dateStr = date2String(date);
    return dateStr;
}
}

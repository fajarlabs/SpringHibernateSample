package com.skckonline.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateFormat {

	public static Date indonesia(String d) {
		SimpleDateFormat format = new SimpleDateFormat("dd/mm/yyyy");
		Date date = null;
		try {
			date = format.parse(d);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return date;
	}
}

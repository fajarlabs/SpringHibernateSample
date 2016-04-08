package com.skckonline.util;

import org.apache.commons.validator.EmailValidator;
import org.apache.commons.validator.DateValidator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Sanitize {
	
	/**
	 * Filter minimin character
	 * @param s
	 * @param min
	 * @return
	 */
	public static Boolean minChar(String s, int min) {
		Boolean result = false;
		
		if(s != null) 
			if(s.length() < min) result = true;
		
		return result;
	}
	
	/**
	 * Filter email
	 * @param email
	 * @return
	 */
	public static Boolean isEmail(String email)  {
		
		Boolean result = false;
		EmailValidator validator = EmailValidator.getInstance();
		if (validator.isValid(email)) {
		   result = true;
		} 
		return result;
	}
	
	/**
	 * Filter indonesia date
	 * @param date
	 * @return
	 */
	public static Boolean isIndonesiaDates(String date) {
		Boolean result = false;
		DateValidator validator = DateValidator.getInstance();
		if(validator.isValid(date,"dd/MM/YYYY",true)) {
			result = true;
		}
		return result;
	}
	
	/**
	 * Filter Username
	 * @param s
	 * @return
	 */
	public static Boolean isUsername(String s) {
		Boolean result = false;
		result = s.matches("^.*[^a-zA-Z0-9_].*$");
		return result;
	}
	
	/**
	 * filter realname
	 * @param s
	 * @return
	 */
	public static Boolean isRealName(String s) {
		Boolean result = false;
		result = s.matches("^.*[^a-zA-Z0-9 ].*$");
		return result;
	}
	
	public static Boolean isImage(String image) {
		Pattern pattern;
		Matcher matcher;
		String image_pattern = "([^\\s]+(\\.(?i)(jpg|png|gif|bmp))$)";
		pattern = Pattern.compile(image_pattern);
		matcher = pattern.matcher(image);
		
		return matcher.matches();
	}
	
	public static Boolean isDocument(String doc) {
		Pattern pattern;
		Matcher matcher;
		String doc_patter = "([^\\s]+(\\.(?i)(doc|docx))$)";
		pattern = Pattern.compile(doc_patter);
		matcher = pattern.matcher(doc);
		
		return matcher.matches();
	}
	
	public static Boolean isPDF(String pdf) {
		Pattern pattern;
		Matcher matcher;
		String image_pattern = "([^\\s]+(\\.(?i)(pdf))$)";
		pattern = Pattern.compile(image_pattern);
		matcher = pattern.matcher(pdf);
		
		return matcher.matches();
	}
	
	
	

}

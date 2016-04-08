package com.skckonline.model;

public class AppMessageError {
	
	private String key;
	private String val;
	
	public AppMessageError() {}
	
	public AppMessageError(String key, String val) {
		this.setKey(key);
		this.setVal(val);
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getVal() {
		return val;
	}

	public void setVal(String val) {
		this.val = val;
	}
	
	
}

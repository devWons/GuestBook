package com.si.top.unsan.enums;

public enum EnumUserInfo {
	USER_GROUP_IN("1"), USER_GROUP_OUT("2");
	
	private String value;
	
	EnumUserInfo(String _value){
		this.value = _value;
	}

	public String getValue() {
		return this.value;
	}
	
}

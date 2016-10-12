package com.si.top.unsan.domain;

public class UserInfoVO {

	private String userId;
	private String userName;
	private String userEmail;
	private String userPassword;
	private String userPhone;
	private String userCharacter;
	private String userGroup;
	private String userAuthority;
	private String userAgreeYn;
	private String userUserPrifileImgIdx;
	private String delYn;
	private String regId;
	private String regDt;
	private String modId;
	private String modDt;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserCharacter() {
		return userCharacter;
	}
	public void setUserCharacter(String userCharacter) {
		this.userCharacter = userCharacter;
	}
	public String getUserGroup() {
		return userGroup;
	}
	public void setUserGroup(String userGroup) {
		this.userGroup = userGroup;
	}
	public String getUserAuthority() {
		return userAuthority;
	}
	public void setUserAuthority(String userAuthority) {
		this.userAuthority = userAuthority;
	}
	public String getUserAgreeYn() {
		return userAgreeYn;
	}
	public void setUserAgreeYn(String userAgreeYn) {
		this.userAgreeYn = userAgreeYn;
	}
	public String getUserUserPrifileImgIdx() {
		return userUserPrifileImgIdx;
	}
	public void setUserUserPrifileImgIdx(String userUserPrifileImgIdx) {
		this.userUserPrifileImgIdx = userUserPrifileImgIdx;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getModId() {
		return modId;
	}
	public void setModId(String modId) {
		this.modId = modId;
	}
	public String getModDt() {
		return modDt;
	}
	public void setModDt(String modDt) {
		this.modDt = modDt;
	}
	
	@Override
	public String toString() {
		return "UserInfoVO [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail
				+ ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userCharacter=" + userCharacter
				+ ", userGroup=" + userGroup + ", userAuthority=" + userAuthority + ", userAgreeYn=" + userAgreeYn
				+ ", userUserPrifileImgIdx=" + userUserPrifileImgIdx + ", delYn=" + delYn + ", regId=" + regId
				+ ", regDt=" + regDt + ", modId=" + modId + ", modDt=" + modDt + "]";
	}
	
}

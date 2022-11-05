package com.goodTrash.app.user.vo;

import java.util.Date;

public class UserVO {

	private int userNumber;
	private String userId;
	private String userPassword;
	private String userEmail;
	private String userName;
	private String userPhoneNumber;
	private int userStatus;
	private char userGender;
	private Date userBirthday;
	private String userAddress;
	private Date userRecentLoginDate;
	private String userNickname;
	private String userRecommendName;
	
	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserRecommendName() {
		return userRecommendName;
	}

	public void setUserRecommendName(String userRecommendName) {
		this.userRecommendName = userRecommendName;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}

	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	public char getUserGender() {
		return userGender;
	}

	public void setUserGender(char userGender) {
		this.userGender = userGender;
	}

	public Date getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Date getUserRecentLoginDate() {
		return userRecentLoginDate;
	}

	public void setUserRecentLoginDate(Date userRecentLoginDate) {
		this.userRecentLoginDate = userRecentLoginDate;
	}
	
	public UserVO() {;}

	@Override
	public String toString() {
		return "UserVO [userNumber=" + userNumber + ", userId=" + userId + ", userPassword=" + userPassword
				+ ", userEmail=" + userEmail + ", userName=" + userName + ", userPhoneNumber=" + userPhoneNumber
				+ ", userStatus=" + userStatus + ", userGender=" + userGender + ", userBirthday=" + userBirthday
				+ ", userAddress=" + userAddress + ", userRecentLoginDate=" + userRecentLoginDate + ", userNickname="
				+ userNickname + ", userRecommendName=" + userRecommendName + "]";
	}

	

	
}

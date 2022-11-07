package com.goodTrash.app.inquiry.vo;

public class InquiryVO {
	private int inquiryNumber;
	private String inquiryType;
	private String inquiryDate;
	private String inquiryDetail;
	private String inquiryImg;
	private int userNumber;
	
	public InquiryVO() {;}

	public int getInquiryNumber() {
		return inquiryNumber;
	}

	public void setInquiryNumber(int inquiryNumber) {
		this.inquiryNumber = inquiryNumber;
	}

	public String getInquiryType() {
		return inquiryType;
	}

	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}

	public String getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(String inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	public String getInquiryDetail() {
		return inquiryDetail;
	}

	public void setInquiryDetail(String inquiryDetail) {
		this.inquiryDetail = inquiryDetail;
	}

	public String getInquiryImg() {
		return inquiryImg;
	}

	public void setInquiryImg(String inquiryImg) {
		this.inquiryImg = inquiryImg;
	}
	
	

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	@Override
	public String toString() {
		return "InquiryVO [inquiryNumber=" + inquiryNumber + ", inquiryType=" + inquiryType + ", inquiryDate="
				+ inquiryDate + ", inquiryDetail=" + inquiryDetail + ", inquiryImg=" + inquiryImg + ", userNumber="
				+ userNumber + "]";
	}

	
	
	
}

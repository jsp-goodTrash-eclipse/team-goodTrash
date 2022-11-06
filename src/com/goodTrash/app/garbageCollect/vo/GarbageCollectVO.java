package com.goodTrash.app.garbageCollect.vo;

public class GarbageCollectVO {
	
	private int garbageCollectNum;
	private String garbageCollectName;
	private String garbageCollectPhoneNumber;
	private int garbageCollectZipcode;
	private String garbageCollectAddress;
	private String garbageCollectAddressDetail;
	private String garbageCollectType;
	private String garbageCollectBoxCount;
	private String garbageCollectRequestDate;
	private String garbageCollectMemo;
	private String garbageCollectStatus;
	
	public GarbageCollectVO() {;}
	
	

	public int getGarbageCollectNum() {
		return garbageCollectNum;
	}

	public void setGarbageCollectNum(int garbageCollectNum) {
		this.garbageCollectNum = garbageCollectNum;
	}

	public String getGarbageCollectName() {
		return garbageCollectName;
	}

	public void setGarbageCollectName(String garbageCollectName) {
		this.garbageCollectName = garbageCollectName;
	}

	public String getGarbageCollectPhoneNumber() {
		return garbageCollectPhoneNumber;
	}

	public void setGarbageCollectPhoneNumber(String garbageCollectPhoneNumber) {
		this.garbageCollectPhoneNumber = garbageCollectPhoneNumber;
	}

	public int getGarbageCollectZipcode() {
		return garbageCollectZipcode;
	}

	public void setGarbageCollectZipcode(int garbageCollectZipcode) {
		this.garbageCollectZipcode = garbageCollectZipcode;
	}

	public String getGarbageCollectAddress() {
		return garbageCollectAddress;
	}

	public void setGarbageCollectAddress(String garbageCollectAddress) {
		this.garbageCollectAddress = garbageCollectAddress;
	}

	public String getGarbageCollectAddressDetail() {
		return garbageCollectAddressDetail;
	}

	public void setGarbageCollectAddressDetail(String garbageCollectAddressDetail) {
		this.garbageCollectAddressDetail = garbageCollectAddressDetail;
	}

	public String getGarbageCollectType() {
		return garbageCollectType;
	}

	public void setGarbageCollectType(String garbageCollectType) {
		this.garbageCollectType = garbageCollectType;
	}

	public String getGarbageCollectBoxCount() {
		return garbageCollectBoxCount;
	}

	public void setGarbageCollectBoxCount(String garbageCollectBoxCount) {
		this.garbageCollectBoxCount = garbageCollectBoxCount;
	}

	public String getGarbageCollectRequestDate() {
		return garbageCollectRequestDate;
	}

	public void setGarbageCollectRequestDate(String garbageCollectRequestDate) {
		this.garbageCollectRequestDate = garbageCollectRequestDate;
	}

	public String getGarbageCollectMemo() {
		return garbageCollectMemo;
	}

	public void setGarbageCollectMemo(String garbageCollectMemo) {
		this.garbageCollectMemo = garbageCollectMemo;
	}
	
	public String getGarbageCollectStatus() {
		return garbageCollectStatus;
	}

	public void setGarbageCollectStatus(String garbageCollectStatus) {
		this.garbageCollectStatus = garbageCollectStatus;
	}



	@Override
	public String toString() {
		return "GarbageCollectVO [garbageCollectNum=" + garbageCollectNum + ", garbageCollectName=" + garbageCollectName
				+ ", garbageCollectPhoneNumber=" + garbageCollectPhoneNumber + ", garbageCollectZipcode="
				+ garbageCollectZipcode + ", garbageCollectAddress=" + garbageCollectAddress
				+ ", garbageCollectAddressDetail=" + garbageCollectAddressDetail + ", garbageCollectType="
				+ garbageCollectType + ", garbageCollectBoxCount=" + garbageCollectBoxCount
				+ ", garbageCollectRequestDate=" + garbageCollectRequestDate + ", garbageCollectMemo="
				+ garbageCollectMemo + ", garbageCollectStatus=" + garbageCollectStatus + "]";
	}
	
}

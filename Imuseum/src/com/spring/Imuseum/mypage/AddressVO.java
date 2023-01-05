package com.spring.Imuseum.mypage;

public class AddressVO {
	private int addrNum; //배송지 번호
	private String addr; //배송주소
	private String addrPhone; //휴대폰번호
	private String addrGetter; //수령인
	private String id; //사용자 아이디
	
	public AddressVO() {
	}
	
	public AddressVO(int addrNum, String addr, String addrPhone, String addrGetter, String id) {
		this.addrNum = addrNum;
		this.addr = addr;
		this.addrPhone = addrPhone;
		this.addrGetter = addrGetter;
		this.id = id;
	}
	
	public int getAddrNum() {
		return addrNum;
	}
	public void setAddrNum(int addrNum) {
		this.addrNum = addrNum;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrPhone() {
		return addrPhone;
	}
	public void setAddrPhone(String addrPhone) {
		this.addrPhone = addrPhone;
	}
	public String getAddrGetter() {
		return addrGetter;
	}
	public void setAddrGetter(String addrGetter) {
		this.addrGetter = addrGetter;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "AddressVO [addrNum=" + addrNum + ", addr=" + addr + ", addrPhone=" + addrPhone + ", addrGetter="
				+ addrGetter + ", id=" + id + "]";
	}
	
	
} //end

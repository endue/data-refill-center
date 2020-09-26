package com.zhss.data.refill.center.domain;

/**
 * @Author:
 * @Description: 充值结果
 * @Date: 2020/9/26 18:15
 * @Version: 1.0
 */
public class RefillResponse {

	/**
	 * 充值结果编号：SUCCESS、FAILURE
	 */
	private String code;
	/**
	 * 充值结果说明
	 */
	private String message;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}

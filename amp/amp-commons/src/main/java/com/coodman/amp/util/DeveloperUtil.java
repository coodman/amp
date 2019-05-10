package com.coodman.amp.util;

public class DeveloperUtil {
	/**
	 * <b>根据开发者主键生成对应的开发者编号</b>
	 * @param devId
	 * @return String
	 */
	public static String createDevNo(Long devId) {
		StringBuffer sb = new StringBuffer("DEV");
		// 判断此时的devId长度是否够6位
		String no = String.valueOf(devId);
		while (no.length() != 6) {
			no = "0" + no;
		}
		// 生成最终的devNo信息
		return sb.append(no).toString();
	}
}

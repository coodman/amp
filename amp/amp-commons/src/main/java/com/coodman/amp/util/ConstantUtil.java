package com.coodman.amp.util;

import java.util.Properties;

public class ConstantUtil {
	private static Properties props = new Properties();
	
	static {
		try {
			props.load(ConstantUtil.class.getClassLoader().getResourceAsStream("system.properties"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * <b>当前页码</b>
	 */
	public static Integer PAGE_NUM = Integer.parseInt(props.getProperty("page.num"));
	
	/**
	 * <b>每页显示数量</b>
	 */
	public static Integer PAGE_SIZE = Integer.parseInt(props.getProperty("page.size"));
}

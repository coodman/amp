package com.coodman.amp.service;

import com.coodman.amp.beans.entity.Developer;

/**
 * <b>开发者平台业务层接口</b>
 * @author Coodman
 * @version 1.0 2019-05-09
 * @since 2019-05-09
 */
public interface DeveloperService {

	/**
	 * <b>使用开发者编号查找对应的开发者信息</b>
	 * @param devNo
	 * @return Developer
	 * @throws Exception
	 */
	public Developer getDeveloperByDevNo(String devNo) throws Exception;

	/**
	 * <b>保存开发者信息</b>
	 * @param developer
	 * @return Developer
	 * @throws Exception
	 */
	public Developer saveDeveloper(Developer developer) throws Exception;
}

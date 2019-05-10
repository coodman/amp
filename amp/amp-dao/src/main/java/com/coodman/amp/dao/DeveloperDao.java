package com.coodman.amp.dao;

import java.util.List;
import java.util.Map;

import com.coodman.amp.beans.entity.Developer;

/**
 * <b>开发者平台数据持久层接口</b>
 * @author Coodman
 * @version 1.0 2019-05-09
 * @since 2019-05-09
 */
public interface DeveloperDao {

	/**
	 * <b>按照条件查询开发者列表</b>
	 * @param params
	 * @return List<Developer>
	 * @throws Exception
	 */
	public List<Developer> findDeveloperListByQuery(Map<String, Object> params) throws Exception;

	/**
	 * <b>保存开发者信息</b>
	 * @param developer
	 * @throws Exception
	 */
	public void saveDeveloper(Developer developer) throws Exception;

	/**
	 * <b>更新开发者信息</b>
	 * @param developer
	 * @throws Exception
	 */
	public void updateDevloper(Developer developer) throws Exception;
}

package com.coodman.amp.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coodman.amp.beans.entity.Developer;
import com.coodman.amp.dao.DeveloperDao;
import com.coodman.amp.service.DeveloperService;
import com.coodman.amp.util.DeveloperUtil;

/**
 * <b>开发者平台业务层接口实现类</b>
 * @author Coodman
 * @version 1.0 2019-05-09
 * @since 2019-05-09
 */
@Service("developerService")
@Transactional
public class DeveloperServiceImpl implements DeveloperService {
	@Resource(name = "developerDao")
	private DeveloperDao developerDao;

	/**
	 * <b>使用开发者编号查找对应的开发者信息</b>
	 * @param devNo
	 * @return Developer
	 * @throws Exception
	 */
	public Developer getDeveloperByDevNo(String devNo) throws Exception {
		// 封装查询参数Map集合
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("devNo", devNo);
		
		List<Developer> developerList = developerDao.findDeveloperListByQuery(params);
		if (developerList != null && developerList.size() > 0) {
			return developerList.get(0);
		}
		return null;
	}

	/**
	 * <b>保存开发者信息</b>
	 * @param developer
	 * @return Developer
	 * @throws Exception
	 */
	public Developer saveDeveloper(Developer developer) throws Exception {
		// 使用数据持久层保存数据
		developerDao.saveDeveloper(developer);
		// 根据主键生成对应的devNo信息
		String devNo = DeveloperUtil.createDevNo(developer.getDevId());
		// 将devNo重新设定，进行更新
		developer.setDevNo(devNo);
		developerDao.updateDevloper(developer);
		return developer;
	}
}

package com.coodman.amp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.coodman.amp.base.controller.BaseController;
import com.coodman.amp.beans.entity.Developer;
import com.coodman.amp.service.DeveloperService;
import com.coodman.amp.util.MD5Util;

/**
 * <b>开发者平台控制器</b>
 * @author Coodman
 * @version 1.0 2019-05-09
 * @since 2019-05-09
 */
@Controller("developerController")
@RequestMapping("/dev")
public class DeveloperController extends BaseController {
	@Resource(name = "developerService")
	private DeveloperService developerService;
	
	/**
	 * <b>加载开发者登录界面</b>
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/devLogin", method = RequestMethod.GET)
	public String getLoginForm() throws Exception {
		return "dev/dev_login";
	}
	
	/**
	 * <b>开发者登录</b>
	 * @param devNo 开发者编号
	 * @param password 登录密码
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(value = "/devLogin", method = RequestMethod.POST)
	public ModelAndView loginDev(String devNo, String password) throws Exception {
		// 创建一个重定向视图
		RedirectView view = new RedirectView();
		// 判断用户是否填写了有效的登录信息
		if (devNo != null && !"".equals(devNo.trim()) && password != null && !"".equals(password.trim())) {
			// 验证用户填写了有效的登录信息，允许进一步进行登录
			// 通过使用业务层，根据当前开发者账号查询是否有对应的开发者信息
			Developer developer = developerService.getDeveloperByDevNo(devNo);
			// 对密码进行加密
			password = MD5Util.encrypt(password);
			// 如果该对象存在，那么进行比较密码是否相等
			if (developer != null && developer.getPassword().equals(password)) {
				// 说明登录成功，那么绑定当前成功用户信息
				session.setAttribute("developer", developer);
				// 进行页面重定向到APP列表页面
				view.setUrl("appList");
				return new ModelAndView(view);
			}
		}
		// 当代码执行到if之外，那么说明登录失败，重定向到登录页面
		view.setUrl("devLogin");
		return new ModelAndView(view);
	}
	
	/**
	 * <b>加载注册页面</b>
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/devRegistry", method = RequestMethod.GET)
	public String getDevRegistryForm() throws Exception {
		return "dev/dev_registry";
	}
	
	/**
	 * <b>开发者注册</b>
	 * @param developer
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/devRegistry", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> registryDev(Developer developer) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 校验用户所填写的信息是否有效
		boolean flag = developer.getDevName() != null && !"".equals(developer.getDevName().trim()) 
				&& developer.getPassword() != null && !"".equals(developer.getPassword().trim())
				&& developer.getCellphone() != null && !"".equals(developer.getCellphone().trim())
				&& developer.getEmail() != null && !"".equals(developer.getEmail());
		if (flag) {
			// 用户所填写的信息有效，进行保存
			developer.setPassword(MD5Util.encrypt(developer.getPassword()));
			developer = developerService.saveDeveloper(developer);
			if (developer != null) {
				resultMap.put("result", true);
				resultMap.put("devNo", developer.getDevNo());
				return resultMap;
			}
		}
		resultMap.put("result", false);
		return resultMap;
	}
}

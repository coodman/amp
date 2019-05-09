package com.coodman.amp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coodman.amp.base.controller.BaseController;

/**
 * <b>开发者平台控制器</b>
 * @author Coodman
 * @version 1.0 2019-05-09
 * @since 2019-05-09
 */
@Controller("developerController")
@RequestMapping("/dev")
public class DeveloperController extends BaseController {
	
	/**
	 * <b>加载开发者登录界面</b>
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/devLogin", method = RequestMethod.GET)
	public String getLoginForm() throws Exception {
		return "dev/dev_login";
	}
}

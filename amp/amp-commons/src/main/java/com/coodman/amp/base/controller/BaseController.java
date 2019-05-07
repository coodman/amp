package com.coodman.amp.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * <b>项目基础控制层</b>
 * <p>用于为其他控制层提供基础HttpServleRequest和HttpSession对象</p>
 * @author Coodman
 * @version v1.0 2019-05-07
 * @since 2019-05-07
 */
@Controller("baseController")
public class BaseController {
	@Autowired
	protected HttpServletRequest request;
	@Autowired
	protected HttpSession session;
}

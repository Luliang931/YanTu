package com.cn.yantu.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yantu.domain.User;
import com.cn.yantu.service.IUserService;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {

	@Autowired
	private IUserService userService;
	/**
	 * 处理/login请求
	 * */
	@RequestMapping(value="/login")
	 public ModelAndView login(
			 @ModelAttribute User u,
			 ModelAndView mv,
			 HttpSession session){
		// 模拟数据库根据登录名和密码查找用户，判断用户登录
		User user = userService.selectUserByUsernameAnaPassword(u);
		if(user != null){
			//登录成功，把用户信息放入session中
			session.setAttribute("user", user);
			// 转发到main请求
			mv.setViewName("redirect:index.jsp");
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	/**
	 * 处理/register请求
	 * */
	@RequestMapping(value="/register")
	 public ModelAndView register(
			 @Valid
			 @ModelAttribute User user,
			 Errors errors,
			 ModelAndView mv){
		// 模拟数据库根据登录名和密码查找用户，判断用户登录
		if(errors.hasErrors()){
			mv.setViewName("registerForm");
		}else{
			int re = userService.insert(user);
			if (re > 0) {
				// 注册成功
				mv.setViewName("loginForm");
			}else {
				//注册失败
				mv.setViewName("registerForm");
				mv.addObject("user", user);
			}

		}
		return mv;
	}
	
	/**
	 * 处理/logout请求
	 * */
	@RequestMapping(value="/logout")
	 public ModelAndView logout(
			 HttpSession session,
			 ModelAndView mv){
		// 模拟数据库根据登录名和密码查找用户，判断用户登录
		session.removeAttribute("user");
		mv.setViewName("loginForm");
		return mv;
	}
}

package com.cn.yantu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.yantu.domain.User;


/**
 * 动态页面跳转控制器
 * */
@Controller
public class FormController{

	@RequestMapping(value="/{formName}")
	 public String loginForm(@PathVariable String formName,Model model){
		User user = new User();
		user.setItem(true);
		model.addAttribute("user", user);
		// 动态跳转页面
		return formName;
	}

}


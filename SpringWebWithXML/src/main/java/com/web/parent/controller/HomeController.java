package com.web.parent.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.parent.entity.EmpEntity;
import com.web.parent.entity.LoginEntity;
import com.web.parent.service.EmpService;


@Controller
@RequestMapping(value = "/")
public class HomeController {

	@Autowired
	EmpService empService;
	@Autowired
	LoginEntity login;
	
	@RequestMapping("/home")
	public ModelAndView test(@ModelAttribute LoginEntity login,Model model) throws IOException {
		System.out.println(login.getUserName()+" "+login.getPassword());
		ArrayList<EmpEntity> entity = empService.getEmployee(login);
		model.addAttribute("screen", "HOME SCREEN");
		return new ModelAndView("home");
	}
	
	@RequestMapping("/")
	public String MyGetRequest(Model m) {
		m.addAttribute("screen", "Login Page");
		m.addAttribute("login",new LoginEntity());
		return "login";
	}

	/*
	 * @RequestMapping("/get") public String getEmployee(@ModelAttribute LoginEntity
	 * login,Model model) { System.out.println(login.getUserName());
	 * System.out.println(login.getPassword()); ArrayList<EmpEntity> entity =
	 * empService.getEmployee(); model.addAttribute("empEntity", entity);
	 * System.out.println("system out in"); return "empdetails"; }
	 */
}

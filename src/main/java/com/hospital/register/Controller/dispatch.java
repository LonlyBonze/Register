package com.hospital.register.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class dispatch {
	@ResponseBody
	@RequestMapping("/hello")
	public String hello(Map<String,Object> map) {
		//classpath:/template/hello.html
		return "hello";
	}
	
	@RequestMapping("/index")
	public String success(Map<String,Object> map) {
		//classpath:/templates/index.html
		return "index";
	}
	
	@RequestMapping("/test")
	public String test(Map<String,Object> map) {
		//classpath:/templates/test.html
		return "scheduleManage/test";
	}
	
	@RequestMapping("/departScheEx")
	public String departScheEx(Map<String,Object> map) {
		//classpath:/templates/departScheEx.html
		return "scheduleManage/departScheEx";
	}
	
	@RequestMapping("/departSche")
	public String departSche(Map<String,Object> map) {
		//classpath:/templates/departSche.html
		return "scheduleManage/departSche";
	}
	
	@RequestMapping("/departScheImport")
	public String departExImport(Map<String,Object> map) {
		//classpath:/templates/departScheImport.html
		return "scheduleManage/departScheImport";
	}
	
	@RequestMapping("/expertSche")
	public String expertSche(Map<String,Object> map) {
		//classpath:/templates/expertSche.html
		return "scheduleManage/expertSche";
	}
	
	@RequestMapping("/expertScheImport")
	public String expertExImport(Map<String,Object> map) {
		//classpath:/templates/expertScheImport.html
		return "scheduleManage/expertScheImport";
	}
	
	@RequestMapping("/expertScheEx")
	public String expertScheEx(Map<String,Object> map) {
		//classpath:/templates/expertScheEx.html
		return "scheduleManage/expertScheEx";
	}
	
	@RequestMapping("/suspendSche")
	public String suspendSche(Map<String,Object> map) {
		//classpath:/templates/suspendSche.html
		return "scheduleManage/suspendSche";
	}
}

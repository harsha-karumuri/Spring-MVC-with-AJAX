package com.accenture.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TimeTableController {

	@RequestMapping(value="/timeTable", method=RequestMethod.GET)
	public @ResponseBody String processRequest(HttpServletRequest request, HttpServletResponse response) {
		
		int num= Integer.parseInt(request.getParameter("val"));
		String result="";
		for(int i=1;i<=10;i++){
			
			result += num+" * "+i+" = "+(num*i)+"<br>";
		}
		return result;
	}
	
}

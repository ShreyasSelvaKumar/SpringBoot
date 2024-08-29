package com.resumeBlog.ResumeBlog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.resumeBlog.ResumeBlog.service.PatternService;

@Controller
public class PatternController {

	@Autowired
	PatternService ps=new PatternService();  
	
	@RequestMapping(method = RequestMethod.GET,value = "/yb-resumeBlog/{uniqueId}")
	public String getblog(@PathVariable String uniqueId,ModelMap m)  {
		if(!ps.VerifyUniqueId(uniqueId)) {
			return "error";
		}
		m.put("resume",ps.getResumeByUniqueId(uniqueId));
		return "blogCopy";
	}
	
	@RequestMapping(method = RequestMethod.GET,value = "/blog")
	public String getblog2()  {
		return "blogCopy";
	}
	
	
//	@RequestMapping(method = RequestMethod.GET,value = "delR") 
//	public void delR() {
//		int id=32;
//		ps.deleteFresherResume(id);
//     }
//	@RequestMapping(method = RequestMethod.GET,value = "getR") 
//	public void getR() {
//		int id=32;
//		ps.getFresherResume(id);
//     }
	
}

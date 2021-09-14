package tms.gj.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		// Index Page update 예정
		return "/layout/index";
	}
	
//	@GetMapping("/campaign")
//	public String campaign() {
//		return "/dashboard/campaign";
//	}
	
//	@GetMapping("/population")
//	public String population() {
//		return "/dashboard/population";
//	}
	
}

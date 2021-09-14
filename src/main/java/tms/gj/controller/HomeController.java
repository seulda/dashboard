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
@AllArgsConstructor
@Log4j
public class HomeController {
	
	@GetMapping("/")
	public String dash() {
		return "/dashboard/dashboard";
	}
	
}

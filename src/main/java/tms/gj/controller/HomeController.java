package tms.gj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;


@Controller
@AllArgsConstructor
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		// Index Page update 예정
		return "/layout/index";
	}


}

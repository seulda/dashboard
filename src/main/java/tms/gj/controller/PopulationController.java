package tms.gj.controller;


import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import tms.gj.domain.PopulationVO;
import tms.gj.service.PopulationService;


@Controller
@AllArgsConstructor
@Log4j
public class PopulationController {
	
	private PopulationService ps;
	
	
	@GetMapping("/population")
	public String population(Model model) {
		
		ps.testCount();
		
		ArrayList<PopulationVO> yt = ps.year_total();
		log.info(" year > total  count : " + yt);
		
		model.addAttribute("yt", yt);
		
		return "/dashboard/population";
	}
	
}

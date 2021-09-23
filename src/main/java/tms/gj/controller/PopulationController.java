package tms.gj.controller;


import java.util.ArrayList;

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
		
		//ps.year2021_count();
		ArrayList<PopulationVO> yc = ps.year_count();
		log.info(" year -> total  count : " + yc);
		
		ArrayList<PopulationVO> y2s = ps.year2021_sex();
		log.info(" year=2021 -> sex  count : " + y2s);
		log.info(" men per : " + y2s.get(0).getPer());
		log.info(" woman per : " + y2s.get(1).getPer());
		
		ArrayList<PopulationVO> y2d = ps.year2021_dong();
		log.info(" year -> dong  count : " + y2d);
		
		ArrayList<PopulationVO> ya = ps.year_age_all();
		log.info(" year -> age  count : " + ya);
		
		model.addAttribute("yc", yc);
		model.addAttribute("men", y2s.get(0).getPer());
		model.addAttribute("woman", y2s.get(1).getPer());
		model.addAttribute("yd", y2d);
		model.addAttribute("ya", ya);
		
		return "/dashboard/population";
	}
	
	@GetMapping("/population/click")
	public String pClick(Model model) {
		
		//ps.count2021();

		ArrayList<PopulationVO> ys = ps.year_sex(2021);
		log.info(" year-> sex  count : " + ys);
		
		model.addAttribute("ys", ys);
		
		return "/dashboard/population";
	}
	
}

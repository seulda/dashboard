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
		
		ps.testCount();
		
		ArrayList<PopulationVO> yt = ps.year_total();
		log.info(" year -> total  count : " + yt);
		ArrayList<PopulationVO> yd = ps.year_dong();
		log.info(" year -> dong  count : " + yd);
		
		ArrayList<PopulationVO> y2s = ps.year2021_sex();
		log.info(" year=2021 -> sex  count : " + y2s);
		log.info(" men per : " + y2s.get(0).getPer());
		log.info(" woman per : " + y2s.get(1).getPer());
		ArrayList<PopulationVO> ys = ps.year_sex(2021);
		log.info(" year-> sex  count : " + ys);
		
		model.addAttribute("yt", yt);
		model.addAttribute("yd", yd);
		model.addAttribute("men", y2s.get(0).getPer());
		model.addAttribute("woman", y2s.get(1).getPer());
		model.addAttribute("ys", ys);
		
		return "/dashboard/population";
	}
	
}

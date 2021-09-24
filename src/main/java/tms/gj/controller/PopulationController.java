package tms.gj.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import tms.gj.domain.ItemVO;
import tms.gj.domain.PopulationVO;
import tms.gj.service.PopulationService;


@Controller
@AllArgsConstructor
@Log4j
public class PopulationController {
	
	private PopulationService ps;
	
	
	@GetMapping("/population")
	public String population(Model model) {
		
		// 연도별 인구
		ArrayList<PopulationVO> yc = ps.year_count();
		log.info(" year -> total  count : " + yc);
		// 2021년 거제시 전체 인구
		int yc2021 = yc.get(8).getPopulation();
		log.info(" year=2021 -> total  count : " + yc2021);
		
		// 2021년 인구 성별 비율
		ArrayList<PopulationVO> y2s = ps.year2021_sex();
		log.info(" year=2021 -> sex  count : " + y2s);
		log.info(" men per : " + y2s.get(0).getPer());
		log.info(" woman per : " + y2s.get(1).getPer());
		
		// 연도별 & 연령대별 인구
		ArrayList<PopulationVO> ya = ps.year_age_all();
		log.info(" year -> age  count : " + ya);
		
		// 연도별 변화요인
		ArrayList<ItemVO> yi = ps.year_item();
		log.info(" year -> item  count : " + yi);
		
		model.addAttribute("yc", yc);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("men", y2s.get(0).getPer());
		model.addAttribute("woman", y2s.get(1).getPer());
		model.addAttribute("ya", ya);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
	}
	
	//@GetMapping("/population/click")
	@RequestMapping(value="/population/click", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public String pClick(Model model, String dName) {
		
		log.info("===== ajax start =====");
		
		String dong = ps.nameset(dName);
		
		// 2021년 거제시 전체 인구
		int yc2021 =ps.year2021_count();

		// 2021년 input 동 인구 성비
		ArrayList<PopulationVO> ys = ps.year_sex(dong);
		log.info(" year-> sex  count : " + ys);
		
		// 2021년 동별 인구
		ArrayList<PopulationVO> y2d = ps.year2021_dong();
		log.info(" year -> dong  count : " + y2d);

		
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("ys", ys);
		model.addAttribute("yd", y2d);
		
		log.info("===== ajax end =====");
		
		return "success";
		//return "/dashboard/population";
	}
	
}

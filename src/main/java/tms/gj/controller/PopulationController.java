package tms.gj.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		//log.info("year_count");
		// 2021년 거제시 전체 인구
		int yc2021 = yc.get(8).getPopulation();
		//log.info("2021_count");
		
		// 2021년 인구 성별 비율
		ArrayList<PopulationVO> ys = ps.y2021_sex();
		float men = ys.get(0).getPer();
		float woman = ys.get(1).getPer();
		//log.info("2021_sex");
		
		// 연도별 & 연령대별 인구
		ArrayList<PopulationVO> ya = ps.year_age();
		//log.info("year_age");
		
		// 연도별 변화요인
		ArrayList<ItemVO> yi = ps.year_item();
		//log.info("year_item");

		model.addAttribute("area", "거제시");
		model.addAttribute("yc", yc);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("men", men);
		model.addAttribute("woman", woman);
		model.addAttribute("ya", ya);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
	}
	
	@GetMapping("/populationArea")
//	@RequestMapping(value="/populationArea", method=RequestMethod.POST, produces="application/text; charset=utf8")
//	@ResponseBody
	public String pClick(Model model, @RequestParam(value="dn", required=false) String dn) {
		
		String dong = ps.nameset(dn);
		log.info("dong filter : " + dong);
		
		// 2021년 거제시 전체 인구
		int yc2021 =ps.year2021_count();

		// 동 > 연도별 인구
		ArrayList<PopulationVO> ycd = ps.year_count_dong(dong);
		//log.info(dong + " >> year_count");
		
		// 동 > 2021년 인구 성비
		ArrayList<PopulationVO> ysd = ps.y2021_sex_dong(dong);
		float men = ysd.get(0).getPer();
		float woman = ysd.get(1).getPer();
		//log.info(dong + " >> 2021_sex");
		
		// 동 > 연도별 & 연령대별 인구
		ArrayList<PopulationVO> yad = ps.year_age_dong(dong);
		//log.info(dong + " >> year_age");
		
		// 동 > 연도별 변화요인
		ArrayList<ItemVO> yid = ps.year_item_dong(dong);
		//log.info(dong + " >> year_item");

		model.addAttribute("area", dong);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("yc", ycd);
		model.addAttribute("men", men);
		model.addAttribute("woman", woman);
		model.addAttribute("ya", yad);
		model.addAttribute("yi", yid);
		
		return "/dashboard/population";
	}
	
}

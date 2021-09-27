package tms.gj.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		//log.info("year_count");
		// 2021년 거제시 전체 인구
		int yc2021 = yc.get(8).getPopulation();
		//log.info("2021_count");
		
		// 2021년 인구 성별 비율
		ArrayList<PopulationVO> ys = ps.y2021_sex();
		//log.info("2021_sex");
		
		// 연도별 & 연령대별 인구
		ArrayList<PopulationVO> ya = ps.year_age();
		ArrayList<PopulationVO> yat = ps.year_age_test();
		//log.info("year_age");
		
		// 연도별 변화요인
		ArrayList<ItemVO> yi = ps.year_item();
		//log.info("year_item");

		model.addAttribute("area", "거제시");
		model.addAttribute("yc", yc);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("ys", ys);
		model.addAttribute("ya", ya);
		model.addAttribute("yat", yat);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
	}
	
	@GetMapping("/populationArea")
	public String populationArea(Model model, @RequestParam String dn) {
		
		String dong = ps.nameset(dn);
		log.info("dong filter : " + dong);
		
		// 2021년 거제시 전체 인구
		int yc2021 =ps.year2021_count();

		// 동 > 연도별 인구
		ArrayList<PopulationVO> ycd = ps.year_count_dong(dong);
		//log.info(dong + " >> year_count");
		
		// 동 > 2021년 인구 성비
		ArrayList<PopulationVO> ysd = ps.y2021_sex_dong(dong);
		//log.info(dong + " >> 2021_sex");
		
		// 동 > 연도별 & 연령대별 인구
		ArrayList<PopulationVO> yad = ps.year_age_dong(dong);
		ArrayList<PopulationVO> yadt = ps.year_age_dong_test(dong);
		//log.info(dong + " >> year_age");
		
		// 동 > 연도별 변화요인
		ArrayList<ItemVO> yid = ps.year_item_dong(dong);
		//log.info(dong + " >> year_item");

		model.addAttribute("area", dong);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("yc", ycd);
		model.addAttribute("ys", ysd);
		model.addAttribute("ya", yad);
		model.addAttribute("yat", yadt);
		model.addAttribute("yi", yid);
		
		return "/dashboard/population";
	}
	
	@PostMapping("/population_Area")
	//@RequestMapping(value="/population_Area", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public Map<String, Object> pClick(@RequestParam String dn) {
		
		String dong = ps.nameset(dn);
		log.info("dong filter : " + dong);
		
		// 2021년 거제시 전체 인구
		int yc2021 =ps.year2021_count();

		// 동 > 연도별 인구
		ArrayList<PopulationVO> ycd = ps.year_count_dong(dong);
		//log.info(dong + " >> year_count");
		
		// 동 > 2021년 인구 성비
		ArrayList<PopulationVO> ysd = ps.y2021_sex_dong(dong);
		//log.info(dong + " >> 2021_sex");
		
		// 동 > 연도별 & 연령대별 인구
		ArrayList<PopulationVO> yad = ps.year_age_dong(dong);
		//log.info(dong + " >> year_age");
		
		// 동 > 연도별 변화요인
		ArrayList<ItemVO> yid = ps.year_item_dong(dong);
		//log.info(dong + " >> year_item");
		
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("area", dong);
		result.put("yc2021", yc2021);
		result.put("yc", ycd);
		result.put("ys", ysd);
		result.put("ya", yad);
		result.put("yi", yid);
		
		return result;
	}
	
}

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
	public String population(Model model, @RequestParam(value = "dn", required = false) String dn) {
		
		int yc2021 =ps.year2021_count();								// 2021년 거제시 전체 인구
		ArrayList<PopulationVO> yc = new ArrayList<PopulationVO>();		// 연도별 인구
		ArrayList<PopulationVO> ys = new ArrayList<PopulationVO>();		// 2021년 인구 성별 비율
		if(dn == null) {
			yc = ps.year_count();
			ys = ps.y2021_sex();
		} else { // 동별
			yc = ps.year_count_dong(dn);
			ys = ps.y2021_sex_dong(dn);
		}
		ArrayList<PopulationVO> ya = ps.year_age(dn);		// 연도별 & 연령대별 인구
		ArrayList<ItemVO> yi = ps.year_item(dn);			// 연도별 변화요인

		if(dn == null) {
			model.addAttribute("area", "거제시");
		} else {
			model.addAttribute("area", dn);
		}
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("yc", yc);
		model.addAttribute("ys", ys);
		model.addAttribute("ya", ya);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
		
	}
	
	
}

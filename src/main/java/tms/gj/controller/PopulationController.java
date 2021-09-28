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
	public String population(Model model, @RequestParam(value = "dn", required = false) String dn) {
		
		// 2021년 거제시 전체 인구
		int yc2021 =ps.year2021_count();

		if(dn == null) {
			ArrayList<PopulationVO> yc = ps.year_count();		// 연도별 인구
			ArrayList<PopulationVO> ys = ps.y2021_sex();		// 2021년 인구 성별 비율
			model.addAttribute("yc", yc);
			model.addAttribute("ys", ys);
		} else {
			ArrayList<PopulationVO> yc = ps.year_count_dong(dn);	// 동 > 연도별 인구
			ArrayList<PopulationVO> ys = ps.y2021_sex_dong(dn);		// 동 > 2021년 인구 성별 비율
			model.addAttribute("yc", yc);
			model.addAttribute("ys", ys);
		}
		// 연도별 & 연령대별 인구
		ArrayList<PopulationVO> ya = ps.year_age(dn);
		// 연도별 변화요인
		ArrayList<ItemVO> yi = ps.year_item(dn);

		if(dn == null) {
			model.addAttribute("area", "거제시");
		} else {
			model.addAttribute("area", dn);
		}

		model.addAttribute("yc2021", yc2021);
		model.addAttribute("ya", ya);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
	}
	
	
}

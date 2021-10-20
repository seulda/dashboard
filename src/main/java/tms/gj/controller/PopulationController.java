package tms.gj.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
		
		int yc2021 = ps.year2021_count();								// 2021년 거제시 전체 인구
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
	
	@ResponseBody
	@GetMapping("/populationAPI")
	public HashMap<String, Object> populationTest(Model model, @RequestParam(value = "dn", required = false) String dn) {
		
		int yc2021 = ps.year2021_count();								// 2021년 거제시 전체 인구
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

		HashMap<String, Object> result = new HashMap<String, Object>();
		
		if(dn == null) {
			result.put("area", "거제시");
		} else {
			result.put("area", dn);
		}
		result.put("yc2021", yc2021);
		result.put("yc", yc);
		result.put("ys", ys);
		result.put("ya", ya);
		result.put("yi", yi);
		
		return result;
	}
	
	@GetMapping("/goPopulation")
	public String goPopulation(Model model, @RequestParam(value = "dn", required = false) String dn) throws IOException {
		
		String result = ps.getPopulation();
		
//		String area = "";												// 기준 지역
//		int yc2021 = 0;													// 2021년 거제시 전체 인구
//		ArrayList<PopulationVO> yc = new ArrayList<PopulationVO>();		// 연도별 인구
//		ArrayList<PopulationVO> ys = new ArrayList<PopulationVO>();		// 2021년 인구 성별 비율
//		ArrayList<PopulationVO> ya = new ArrayList<PopulationVO>();		// 연도별 & 연령대별 인구
//		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();					// 연도별 변화요인
		
		// json 작업 start
		
		JSONObject jObject = new JSONObject(result);
		int codeObject = jObject.getInt("code");
		String messageObject = jObject.getString("message");
		String responseTimeObject = jObject.getString("responseTime");
		JSONObject responseObject = jObject.getJSONObject("response");

		log.info("go populationAPI response codeObject : " + codeObject);
		log.info("go populationAPI response messageObject : " + messageObject);
		log.info("go populationAPI response responseTimeObject : " + responseTimeObject);
		
		JSONObject resultsObject = responseObject.getJSONObject("results");
		String area = resultsObject.getString("area");
		JSONArray ya = resultsObject.getJSONArray("ya");
		JSONArray yc = resultsObject.getJSONArray("yc");
		JSONArray yc2021 = resultsObject.getJSONArray("yc2021");
		JSONArray yi = resultsObject.getJSONArray("yi");
		JSONArray ys = resultsObject.getJSONArray("ys");
		
		// json 작업 end
		
//		if(dn == null) {
//			model.addAttribute("area", "거제시");
//		} else {
//			model.addAttribute("area", dn);
//		}
		//model.addAttribute("area", area);
		model.addAttribute("yc2021", yc2021);
		model.addAttribute("yc", yc);
		model.addAttribute("ys", ys);
		model.addAttribute("ya", ya);
		model.addAttribute("yi", yi);
		
		return "/dashboard/population";
		
	}
	
}

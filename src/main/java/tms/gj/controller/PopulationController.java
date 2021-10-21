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
		
		String result = ps.getPopulationAPI();
		
		ArrayList<PopulationVO> yc2021 = new ArrayList<PopulationVO>();
		ArrayList<PopulationVO> yc = new ArrayList<PopulationVO>();
		ArrayList<PopulationVO> ys = new ArrayList<PopulationVO>();
		ArrayList<PopulationVO> ya = new ArrayList<PopulationVO>();
		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();
		
		
		// ==================== json 작업 start ====================
		
		JSONObject jObject = new JSONObject(result);
		int codeObject = jObject.getInt("code");
		String messageObject = jObject.getString("message");
		String responseTimeObject = jObject.getString("responseTime");
		JSONObject responseObject = jObject.getJSONObject("response");

		log.info("[go populationAPI] response codeObject : " + codeObject
				+ " / messageObject : " + messageObject + " / responseTimeObject : " + responseTimeObject);
		
		JSONObject resultsObject = responseObject.getJSONObject("results");
		String areaObject = resultsObject.getString("area");
		JSONArray yc2021Object = resultsObject.getJSONArray("yc2021");
		JSONArray ycObject = resultsObject.getJSONArray("yc");
		JSONArray ysObject = resultsObject.getJSONArray("ys");
		JSONArray yaObject = resultsObject.getJSONArray("ya");
		JSONArray yiObject = resultsObject.getJSONArray("yi");
		
		String[] objectKey = { "yc2021", "yc", "ys", "ya" };
		int[] objectLength = { yc2021Object.length(), ycObject.length(), ysObject.length(), yaObject.length() };
		
		for (int i = 0; i < 4; i++) {

			ArrayList<PopulationVO> list = new ArrayList<PopulationVO>();
			JSONArray itemArray = resultsObject.getJSONArray(objectKey[i]);
			
			for (int j = 0; j < objectLength[i]; j++) {
				
				PopulationVO pvo = new PopulationVO();
				JSONObject iobj = itemArray.getJSONObject(j);

				if(iobj.has("year")) {
					pvo.setYear(iobj.getInt("year"));
				}
				if(iobj.has("dong")) {
					pvo.setDong(iobj.getString("dong"));
				}
				if(iobj.has("age")) {
					pvo.setAge(iobj.getString("age"));
				}
				if(iobj.has("sex")) {
					pvo.setSex(iobj.getString("sex"));
				}
				if(iobj.has("population")) {
					pvo.setPopulation(iobj.getInt("population"));
				}
				if(iobj.has("per")) {
					pvo.setPer(iobj.getFloat("per"));
				}
				
				list.add(pvo);
			}
			
			switch (i) {
				case 0: 
					yc2021 = list;
					break;
				case 1: 
					yc = list;
					break;
				case 2: 
					ys = list;
					break;
				case 3: 
					ya = list;
					break;
			}
		}
		
		yi = ps.go_year_item(yiObject);
		
		// ==================== json 작업 end ====================
		
		model.addAttribute("area", areaObject);								// 기준 지역
		model.addAttribute("yc2021", yc2021.get(0).getPopulation());		// 2021년 거제시 전체 인구
		model.addAttribute("yc", yc);										// 연도별 인구
		model.addAttribute("ys", ys);										// 2021년 인구 성별 비율
		model.addAttribute("ya", ya);										// 연도별 & 연령대별 인구
		model.addAttribute("yi", yi);										// 연도별 변화요인
		
//		return "/dashboard/populationAPI";
		return "/dashboard/population";
		
	}
	
}

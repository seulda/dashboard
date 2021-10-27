package tms.gj.controller;


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
import tms.gj.domain.CampaignVO;
import tms.gj.service.CampaignService;


@Controller
@AllArgsConstructor
@Log4j
public class CampaignController {
	
	private CampaignService cs;
	
	@GetMapping("/campaign")
	public String campaign(@RequestParam(value = "department",required = false) String department,Model model) {
		
		ArrayList<CampaignVO> detailList = cs.detailList(department);
		ArrayList<CampaignVO> rate       = cs.campaignRate();
		ArrayList<CampaignVO> period     = cs.businessPeriod();
		ArrayList<CampaignVO> fulfil     = cs.fulfil();
		ArrayList<CampaignVO> cnt        = cs.cnt(department);
		
		model.addAttribute("detailList", detailList);
		model.addAttribute("rate", rate);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		model.addAttribute("cnt", cnt);
		
		return "/dashboard/campaign";
	
	}
	
	@ResponseBody
	@GetMapping("/campaignAPI")
	public HashMap<String, Object> campaignTest(@RequestParam(value = "department",required = false) String department,Model model) {
		
		ArrayList<CampaignVO> detailList = cs.detailList(department);
		ArrayList<CampaignVO> rate       = cs.campaignRate();
		ArrayList<CampaignVO> period     = cs.businessPeriod();
		ArrayList<CampaignVO> fulfil     = cs.fulfil();
		ArrayList<CampaignVO> cnt        = cs.cnt(department);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		result.put("detailList", detailList);
		result.put("rate", rate);
		result.put("period", period);
		result.put("fulfil", fulfil);
		result.put("cnt", cnt);
		
		return result;
	
	}
	
	
	@GetMapping("/goCampaign")
	public String goCampaign(@RequestParam(value = "department", required = false) String department, Model model)
			throws Exception {
		
		//vo====================================================================
		ArrayList<CampaignVO> cnt = new ArrayList<CampaignVO>();
		ArrayList<CampaignVO> detailList = new ArrayList<CampaignVO>();
		ArrayList<CampaignVO> fulfil = new ArrayList<CampaignVO>();
		ArrayList<CampaignVO> period = new ArrayList<CampaignVO>();
		ArrayList<CampaignVO> rate = new ArrayList<CampaignVO>();

		//service연결
		String result = cs.getCampaignAPI(department);
		
		//json==================================================================
		JSONObject jObject = new JSONObject(result);
		log.info("jObject:"+ result);
		int codeObject = jObject.getInt("code");
		String messageObject = jObject.getString("message");
		String responseTimeObject = jObject.getString("responseTime");
		JSONObject responseObject = jObject.getJSONObject("response");
		log.info("[go campaignAPI] response codeObject : " + codeObject
				+ " / messageObject : " + messageObject + " / responseTimeObject : " + responseTimeObject);
		
		JSONObject resultsObject = responseObject.getJSONObject("results");
		JSONArray cntObject = resultsObject.getJSONArray("cnt");
		JSONArray detailListObject = resultsObject.getJSONArray("detailList");
		JSONArray fulfilObject = resultsObject.getJSONArray("fulfil");
		JSONArray periodObject = resultsObject.getJSONArray("period");
		JSONArray rateObject = resultsObject.getJSONArray("rate");
		
		String[] objectKey = { "rate", "period", "fulfil", "detailList", "cnt"  };
		int[] objectLength = { rateObject.length(), periodObject.length(), fulfilObject.length(), detailListObject.length(), cntObject.length() };

		for (int i = 0; i < 5; i++) {

			ArrayList<CampaignVO> list = new ArrayList<CampaignVO>();
			JSONArray itemArray = resultsObject.getJSONArray(objectKey[i]);
			
			for (int j = 0; j < objectLength[i]; j++) {
				
				CampaignVO cvo = new CampaignVO();
				JSONObject iobj = itemArray.getJSONObject(j);
				
				if(iobj.has("avgRate")) {
					cvo.setAvgRate(iobj.getInt("avgRate"));
				}
				if(iobj.has("businessPeriod")) {
					cvo.setBusinessPeriod(iobj.getString("businessPeriod")); 
				}
				if(iobj.has("department")) {
					cvo.setDepartment(iobj.getString("department"));
				}
				if(iobj.has("fulfil")) {
					cvo.setFulfil(iobj.getString("fulfil"));
				}
				if(iobj.has("manager")) {
					cvo.setManager(iobj.getInt("manager"));
				}
				if(iobj.has("name")) {
					cvo.setName(iobj.getString("name"));
				}
				if(iobj.has("rate")) {
					cvo.setRate(iobj.getInt("rate"));
				}
				if(iobj.has("cnt")) {
					cvo.setCnt(iobj.getInt("cnt"));
				}
				if(iobj.has("section")) {
					cvo.setSection(iobj.getString("section"));
				}
					
				list.add(cvo);
			}
			
			switch (i) {
				case 0: 
					rate = list;
					break;
				case 1: 
					period = list;
					break;
				case 2: 
					fulfil = list;
					break;
				case 3: 
					detailList = list;
					break;
				case 4: 
					cnt = list;
					break;	
			}
		}
		
		model.addAttribute("detailList", detailList);
		model.addAttribute("rate", rate);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		model.addAttribute("cnt", cnt);

		return "/dashboard/campaign";

	}	
	
	@GetMapping("/goCampaignVo")
	public String goCampaignVo(@RequestParam(value = "department", required = false) String department, Model model) throws Exception {
		
		//ArrayList<CampaignVO> result = cs.getCampaignVoAPI(department);
		 cs.getCampaignVoAPI(department);
		
		return "/dashboard/campaign";

	}
	
}

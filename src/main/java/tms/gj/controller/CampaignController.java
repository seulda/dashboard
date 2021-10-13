package tms.gj.controller;


import java.util.ArrayList;
import java.util.HashMap;

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
	
	@ResponseBody
	@GetMapping("/campaignAPI")
	public HashMap<String, Object> campaign(@RequestParam(value = "department",required = false) String department,Model model) {
		
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
	
	
}

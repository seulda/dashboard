package tms.gj.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		ArrayList<CampaignVO> all        = cs.all();
		ArrayList<CampaignVO> cnt        = cs.cnt(department);
		
		model.addAttribute("detailList", detailList);
		model.addAttribute("rate", rate);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		model.addAttribute("all", all);
		model.addAttribute("cnt", cnt);
		
		return "/dashboard/campaign";
		

	}
	
	
}

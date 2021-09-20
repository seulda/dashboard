package tms.gj.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	public String campaign(Model model) {
		
		cs.testCount();
		ArrayList<CampaignVO> list = cs.campaignList();
		ArrayList<CampaignVO> rate = cs.campaignRate();
		ArrayList<CampaignVO> category = cs.category();
		ArrayList<CampaignVO> location = cs.location();
		ArrayList<CampaignVO> period   = cs.businessPeriod();
		ArrayList<CampaignVO> fulfil   = cs.fulfil();
		
		model.addAttribute("list", list);
		model.addAttribute("rate", rate);
		model.addAttribute("category", category);
		model.addAttribute("location", location);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		
		return "/dashboard/campaign";
	}
	
}

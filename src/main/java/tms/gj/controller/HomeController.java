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
public class HomeController {
	
	private CampaignService cs;
	
	
	@GetMapping("/")
	public String index() {
		// Index Page update 예정
		return "/layout/index";
	}

	@GetMapping("/campaign2")
	public String campaign2(Model model) {
		
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
		
		return "/dashboard/campaign2";
	}
	
//	@GetMapping("/campaign")
//	public String campaign() {
//		return "/dashboard/campaign";
//	}
	
//	@GetMapping("/population")
//	public String population() {
//		return "/dashboard/population";
//	}
	
}

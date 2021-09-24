package tms.gj.controller;


import java.util.ArrayList;

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
	public String campaign(Model model) {
		
		ArrayList<CampaignVO> list = cs.campaignList();
		ArrayList<CampaignVO> rate = cs.campaignRate();
		ArrayList<CampaignVO> category = cs.category();
		ArrayList<CampaignVO> location = cs.location();
		ArrayList<CampaignVO> period   = cs.businessPeriod();
		ArrayList<CampaignVO> fulfil   = cs.fulfil();
		ArrayList<CampaignVO> all   = cs.all();
		
		
		model.addAttribute("list", list);
		model.addAttribute("rate", rate);
		model.addAttribute("category", category);
		model.addAttribute("location", location);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		model.addAttribute("detailList", all);

		
		return "/dashboard/campaign";
	}
	
	@GetMapping("/detail_list.do")
	public String detail(@RequestParam(value = "department") String department,
						Model model) {
		
		ArrayList<CampaignVO> detailList = cs.detailList(department);
		model.addAttribute("detailList", detailList);
		
		return "/dashboard/campaign";
	}
	
}

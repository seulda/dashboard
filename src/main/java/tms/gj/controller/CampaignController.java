package tms.gj.controller;


import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

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

		RestTemplate restTemplate = new RestTemplate();

		URI uri = URI.create("http://localhost:8080/vurix-dms/api/v1/dbData/getCampaign");
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("user-agent",
				"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36");
		HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		ResponseEntity<String> result = restTemplate.exchange(uri, HttpMethod.GET, entity, String.class);
		
		String resultJson = result.toString().substring(5, 15848);
		
		ArrayList<CampaignVO> detailList = cs.detailList(department);
		ArrayList<CampaignVO> rate = cs.campaignRate();
		ArrayList<CampaignVO> period = cs.businessPeriod();
		ArrayList<CampaignVO> fulfil = cs.fulfil();
		ArrayList<CampaignVO> cnt = cs.cnt(department);

		model.addAttribute("detailList", detailList);
		model.addAttribute("rate", rate);
		model.addAttribute("period", period);
		model.addAttribute("fulfil", fulfil);
		model.addAttribute("cnt", cnt);

		//log.info(result.toString().replaceAll("<", "{").replaceAll(">", "}"));
		log.info(resultJson.toString());

		return "/dashboard/campaign";

	}
	 
	/*
	 @GetMapping("/goCampaign") 
	 public String goCampaign(@RequestParam(value ="department",required = false) String department,Model model) throws Exception {
	 
		    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
		    converters.add(new FormHttpMessageConverter());
		    converters.add(new StringHttpMessageConverter());
		 
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.setMessageConverters(converters);
		 
		    // parameter 세팅
		    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		    map.add("str", "thisistest");
		 
		    // REST API 호출
		    String result = restTemplate.postForObject("http://localhost:8080/vurix-dms/api/v1/dbData/getCampaign", map, String.class);
		    System.out.println("------------------ TEST 결과 ------------------");
		    System.out.println(result);


	  
	 return "/dashboard/campaign";
	  
	 }
	 */
	
	
	
}

package tms.gj.service;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import jdk.internal.org.jline.utils.Log;
import lombok.AllArgsConstructor;
import tms.gj.domain.CampaignVO;
import tms.gj.mapper.CampaignMapper;


@Service
@AllArgsConstructor
public class CampaignServiceImpl implements CampaignService {
	
	private CampaignMapper cm;

	// 부서별 공약 이행 현황
	@Override
	public ArrayList<CampaignVO> campaignRate() {
		return cm.campaignRate();
	}
	// 이번년도 종료되는 공약
	@Override
	public ArrayList<CampaignVO> businessPeriod() {
		return cm.businessPeriod();
	}
	// 진행현황(완료,추진중,보류,폐기) 갯수
	@Override
	public ArrayList<CampaignVO> fulfil() {
		return cm.fulfil();
	}
	// 부서별 공약
	@Override
	public ArrayList<CampaignVO> detailList(String department) {
		return cm.detailList(department);
	}
	// 부서별 진행현황(완료,추진중,보류,폐기) 갯수
	@Override
	public ArrayList<CampaignVO> cnt(String department) {
		return cm.cnt(department);
	}
	@Override
	public String getCampaignAPI(String department) {
		
		RestTemplate restTemplate = new RestTemplate();

		String apiUrl = "http://localhost:8080/vurix-dms/api/v1/dbData/getCampaign";
		if (department != null) {
			apiUrl = apiUrl + "?department=" + department;
		}
		URI uri = URI.create(apiUrl);

		//HttpHeaders headers = new HttpHeaders();
		//headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		//headers.setContentType(MediaType.APPLICATION_JSON);
		//headers.set("user-agent",
				//"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36");
		//HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		String result = restTemplate.getForObject(uri, String.class);
		
		return result;
	}
	
	
}

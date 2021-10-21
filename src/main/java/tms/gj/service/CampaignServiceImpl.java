package tms.gj.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

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
	
	/*
	 * @Override public ResponseEntity<Object> getCampaign(String department) {
	 * 
	 * RestTemplate restTemplate = new RestTemplate();
	 * restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
	 * 
	 * HttpHeaders header = new HttpHeaders(); HttpEntity<?> entity = new
	 * HttpEntity<>(header);
	 * 
	 * String url = "http://localhost:8080/vurix-dms/api/v1/dbData/getCampaign";
	 * UriComponents uri = UriComponentsBuilder.fromHttpUrl(url + "?" + "department"
	 * + department).build();
	 * 
	 * ResponseEntity<Object> exchange = restTemplate.exchange(uri.toString(),
	 * HttpMethod.GET, entity, Object.class);
	 * 
	 * System.out.println("exchange = " + exchange);
	 * 
	 * HttpStatus statusCode = exchange.getStatusCode(); //상태코드확인 HttpHeaders
	 * headers = exchange.getHeaders(); //헤더정보확인 Object body = exchange.getBody();
	 * //바디정보확인
	 * 
	 * return exchange;
	 * 
	 * }
	 */
	
}

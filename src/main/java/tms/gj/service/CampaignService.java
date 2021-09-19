package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignService {
	
	// 공약 개수 조회
	public void testCount();
	// 부서별 이행 리스트
	public ArrayList<CampaignVO> campaignList();
	
}

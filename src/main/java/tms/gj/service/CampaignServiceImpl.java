package tms.gj.service;

import java.awt.List;
import java.util.ArrayList;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import tms.gj.domain.CampaignVO;
import tms.gj.mapper.CampaignMapper;


@Service
@AllArgsConstructor
public class CampaignServiceImpl implements CampaignService {
	
	private CampaignMapper cm;
	
	// 공약 개수 조회
	@Override
	public void testCount() {
		System.out.println("test campaign count : " + cm.campaignCount());
	}

	//부서별 이행 리스트
	@Override
	public ArrayList<CampaignVO> campaignList() {
		return cm.campaignList();
	}
	
}

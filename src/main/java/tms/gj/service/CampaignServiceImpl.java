package tms.gj.service;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
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
}

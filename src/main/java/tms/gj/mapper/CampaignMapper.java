package tms.gj.mapper;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignMapper {
	
	// 여기에 들어가는 메서드는 mapper.xml파일 내에 id들. ex) <select id="here">
	
	// 공약 개수 조회
	public int campaignCount();
	// 부서별 이행 리스트
	public ArrayList<CampaignVO> campaignList();
}

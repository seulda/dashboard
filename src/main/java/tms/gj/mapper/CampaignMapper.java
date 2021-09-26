package tms.gj.mapper;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignMapper {
	
	// 여기에 들어가는 메서드는 mapper.xml파일 내에 id들. ex) <select id="here">
	
	// 부서별 공약 이행 현황
	public ArrayList<CampaignVO> campaignRate();
	// 이번년도 종료되는 공약 현황
	public ArrayList<CampaignVO> businessPeriod();
	
	public ArrayList<CampaignVO> fulfil();
	//전체공약
	public ArrayList<CampaignVO> all();
	
	public ArrayList<CampaignVO> detailList(String department);
	
	public ArrayList<CampaignVO> cnt(String department);
}

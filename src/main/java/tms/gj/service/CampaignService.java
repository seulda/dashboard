package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignService {
	
	// 부서별 공약 이행 현황
	public ArrayList<CampaignVO> campaignRate();
	// 이번년도 종료되는 공약 현황
	public ArrayList<CampaignVO> businessPeriod();
	
	public ArrayList<CampaignVO> fulfil();
	// 전체 공약
	public ArrayList<CampaignVO> all();
	
	public ArrayList<CampaignVO> detailList(String department);
	
	public ArrayList<CampaignVO> cnt(String department);
}

package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignService {
	
	// 공약 개수 조회
	public void testCount();
	// 부서별 이행 리스트
	public ArrayList<CampaignVO> campaignList();
	// 부서별 공약 이행 현황
	public ArrayList<CampaignVO> campaignRate();
	// 산업별 공약 이행 현황
	public ArrayList<CampaignVO> category();
	// 지역별 공약 이행 현황
	public ArrayList<CampaignVO> location();
	// 이번년도 종료되는 공약 현황
	public ArrayList<CampaignVO> businessPeriod();
	
	public ArrayList<CampaignVO> fulfil();
}

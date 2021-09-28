package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.CampaignVO;

public interface CampaignService {
	
	// 부서별 공약 이행 현황
	public ArrayList<CampaignVO> campaignRate();
	// 이번년도 종료되는 공약 현황
	public ArrayList<CampaignVO> businessPeriod();
	// 진행현황(완료,추진중,보류,폐기) 갯수
	public ArrayList<CampaignVO> fulfil();
	// 부서별 공약
	public ArrayList<CampaignVO> detailList(String department);
	// 부서별 진행현황(완료,추진중,보류,폐기) 갯수
	public ArrayList<CampaignVO> cnt(String department);
}

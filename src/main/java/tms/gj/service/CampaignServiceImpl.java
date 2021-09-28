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
	
}

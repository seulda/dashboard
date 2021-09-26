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
		// TODO Auto-generated method stub
		return cm.campaignRate();
	}

	@Override
	public ArrayList<CampaignVO> businessPeriod() {
		// TODO Auto-generated method stub
		return cm.businessPeriod();
	}

	@Override
	public ArrayList<CampaignVO> fulfil() {
		// TODO Auto-generated method stub
		return cm.fulfil();
	}

	@Override
	public ArrayList<CampaignVO> all() {
		// TODO Auto-generated method stub
		return cm.all();
	}

	@Override
	public ArrayList<CampaignVO> detailList(String department) {
		// TODO Auto-generated method stub
		return cm.detailList(department);
	}

	@Override
	public ArrayList<CampaignVO> cnt(String department) {
		// TODO Auto-generated method stub
		return cm.cnt(department);
	}
	
}

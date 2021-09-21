package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.PopulationVO;

public interface PopulationService {
	
	// 인구 데이터 개수 조회
	public void testCount();
	
	// 연도별, 전체
	public ArrayList<PopulationVO> year_total();
	
}

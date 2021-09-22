package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.PopulationVO;

public interface PopulationService {
	
	// 인구 데이터 개수 조회
	public void testCount();
	
	// 연도별, 전체
	public ArrayList<PopulationVO> year_total();
	// 연도별 > 면,동
	public ArrayList<PopulationVO> year_dong();
	
	// 2021년 > 성별
	public ArrayList<PopulationVO> year2021_sex();
	// 연도별 > 성별
	public ArrayList<PopulationVO> year_sex(int year);
	
}

package tms.gj.service;

import java.util.ArrayList;

import tms.gj.domain.ItemVO;
import tms.gj.domain.PopulationVO;

public interface PopulationService {
	
	// 2021년 인구수
	public int year2021_count();
	// 연도별 인구수
	public ArrayList<PopulationVO> year_count();
	// 동 : 연도별 인구수
	public ArrayList<PopulationVO> year_count_dong(String dong);
	
	
	// 2021년 > 성별
	public ArrayList<PopulationVO> y2021_sex();
	// 동 : 2021년 > 성별
	public ArrayList<PopulationVO> y2021_sex_dong(String dong);
	

	// 연도별 > 나이대별
	public ArrayList<PopulationVO> year_age();
	// 동 : 연도별 > 나이대별
	public ArrayList<PopulationVO> year_age_dong(String dong);
	

	// 연도별 변화요인
	public ArrayList<ItemVO> year_item();
	// 동 : 연도별 변화요인
	public ArrayList<ItemVO> year_item_dong(String dong);
	
	
	// 동 찾기
	public String nameset(String dName);
	
}

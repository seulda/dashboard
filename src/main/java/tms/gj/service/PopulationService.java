package tms.gj.service;

import java.io.IOException;
import java.util.ArrayList;

import org.json.JSONArray;

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
	public ArrayList<PopulationVO> year_age(String dong);


	// 연도별 변화요인
	public ArrayList<ItemVO> year_item(String dong);
	
	
	
	
	// go server : getPopulation API
	public String getPopulationAPI(String dong) throws IOException;
	public String getPopulationAPI_REST(String dong) throws IOException;
	
	// go 연도별 변화요인
	public ArrayList<ItemVO> go_year_item(JSONArray yiArray);
	
}

package tms.gj.mapper;

import java.util.ArrayList;
import tms.gj.domain.PopulationVO;

public interface PopulationMapper {
	
	// 2021년 인구수
	public int year2021_count();
	// 연도별 인구수
	public ArrayList<PopulationVO> year_count();
	
	
	// 2021년 > 면,동
	public ArrayList<PopulationVO> year2021_dong();
	// 연도별 > 면,동
	public ArrayList<PopulationVO> year_dong(int year);
	
	
	// 2021년 > 성별
	public ArrayList<PopulationVO> year2021_sex();
	// 연도별 > 성별
	public ArrayList<PopulationVO> year_sex(int year);

	
	// 연도별 > 나이대별
	public ArrayList<PopulationVO> year_age_all();
	// 연도별 > 나이대별 > 동별
	public ArrayList<PopulationVO> year_age_dong(String dong);

}

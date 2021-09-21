package tms.gj.mapper;

import java.util.ArrayList;
import tms.gj.domain.PopulationVO;

public interface PopulationMapper {
	
	// 인구 데이터 개수 조회
	public int testCount();
	
	// 연도별 > 전체
	public ArrayList<PopulationVO> year_total();

}

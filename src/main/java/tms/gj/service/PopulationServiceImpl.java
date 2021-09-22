package tms.gj.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import tms.gj.domain.PopulationVO;
import tms.gj.mapper.PopulationMapper;


@Service
@AllArgsConstructor
public class PopulationServiceImpl implements PopulationService {
	
	private PopulationMapper pm;
	
	
	@Override
	public void testCount() {
		System.out.println("test population count : " + pm.testCount());
	}


	@Override
	public ArrayList<PopulationVO> year_total() {
		return pm.year_total();
	}
	@Override
	public ArrayList<PopulationVO> year_dong() {
		return pm.year_dong();
	}


	@Override
	public ArrayList<PopulationVO> year2021_sex() {
		return pm.year2021_sex();
	}
	@Override
	public ArrayList<PopulationVO> year_sex(int year) {
		return pm.year_sex(year);
	}
	

}

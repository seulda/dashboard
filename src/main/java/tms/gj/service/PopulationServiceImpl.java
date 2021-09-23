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
	public void year2021_count() {
		System.out.println("test population count : " + pm.year2021_count());
	}
	@Override
	public ArrayList<PopulationVO> year_count() {
		return pm.year_count();
	}
	
	
	@Override
	public ArrayList<PopulationVO> year_dong(int year) {
		return pm.year_dong(year);
	}
	@Override
	public ArrayList<PopulationVO> year2021_dong() {
		ArrayList<PopulationVO> y2d_before = pm.year2021_dong();
		ArrayList<PopulationVO> y2d = new ArrayList<PopulationVO>();
		
		
		
		return pm.year2021_dong();
	}


	@Override
	public ArrayList<PopulationVO> year2021_sex() {
		return pm.year2021_sex();
	}
	@Override
	public ArrayList<PopulationVO> year_sex(int year) {
		return pm.year_sex(year);
	}


	@Override
	public ArrayList<PopulationVO> year2021_age() {
		return pm.year2021_age();
	}
	@Override
	public ArrayList<PopulationVO> year_age(int year) {
		return pm.year_age(year);
	}


	
	

}

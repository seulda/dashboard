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
//		ArrayList<PopulationVO> y2d_before = pm.year2021_dong();
//		ArrayList<PopulationVO> y2d = new ArrayList<PopulationVO>();
//		
//		System.out.println("y2d_before: "+y2d_before);
//		
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
		ArrayList<PopulationVO> y2a_before = pm.year2021_age();
		ArrayList<PopulationVO> y2a = new ArrayList<PopulationVO>();
		
		int youngCnt = 0;		// 0 to 9
		int teenageCnt = 0;		// 10 to 19
		int cheongCnt = 0;		// 20 to 29
		int jungCnt = 0;		// 30 to 49
		int jangCnt = 0;		// 50 to 64
		int noCnt = 0;			// 65 up
		
		for(int i = 0; i < y2a_before.size(); i++) {
			
			String test = y2a_before.get(i).getAge();
			if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
				// 0 to 9
				youngCnt += y2a_before.get(i).getPopulation();
			} else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
				// 10 to 19
				teenageCnt += y2a_before.get(i).getPopulation();
			} else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
				// 20 to 29
				cheongCnt += y2a_before.get(i).getPopulation();
			} else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
				// 30 to 49
				jungCnt += y2a_before.get(i).getPopulation();
			} else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
				// 50 to 64
				jangCnt += y2a_before.get(i).getPopulation();
			} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
					  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
					  || test.equals("100+") ) {
				// 65 up
				noCnt += y2a_before.get(i).getPopulation();
			} else {
				// exception
			}
			
		}
		
		PopulationVO young = new PopulationVO();		// 0 to 9
		young.setYear(0);
		young.setDong("");
		young.setAge("0 - 9세");
		young.setPopulation(youngCnt);
		PopulationVO teenage = new PopulationVO();		// 10 to 19
		teenage.setYear(0);
		teenage.setDong("");
		teenage.setAge("10 - 19세");
		teenage.setPopulation(teenageCnt);
		PopulationVO cheong = new PopulationVO();		// 20 to 29
		cheong.setYear(0);
		cheong.setDong("");
		cheong.setAge("20 - 29세");
		cheong.setPopulation(cheongCnt);
		PopulationVO jung = new PopulationVO();			// 30 to 49
		jung.setYear(0);
		jung.setDong("");
		jung.setAge("30 - 49세");
		jung.setPopulation(jungCnt);
		PopulationVO jang = new PopulationVO();			// 50 to 64
		jang.setYear(0);
		jang.setDong("");
		jang.setAge("50 - 64세");
		jang.setPopulation(jangCnt);
		PopulationVO no = new PopulationVO();			// 65 up
		no.setYear(0);
		no.setDong("");
		no.setAge("65세 이상");
		no.setPopulation(noCnt);
		
		y2a.add(young);
		y2a.add(teenage);
		y2a.add(cheong);
		y2a.add(jung);
		y2a.add(jang);
		y2a.add(no);
		
		System.out.println("@@@ y2a_before: "+y2a_before);
		System.out.println("@@@ y2a_after: "+y2a);
		
		return y2a;
	}
	@Override
	public ArrayList<PopulationVO> year_age(int year) {
		return pm.year_age(year);
	}


	
	

}

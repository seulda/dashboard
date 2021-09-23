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
	public ArrayList<PopulationVO> year_age_all() {
		
		ArrayList<PopulationVO> ya_before = pm.year_age_all();
		ArrayList<PopulationVO> ya = new ArrayList<PopulationVO>();

		for(int j = 2013; j < 2022; j++) {
			
			PopulationVO pvo_young = new PopulationVO();
			pvo_young.setYear(j);
			pvo_young.setAge("0 - 9세");
			PopulationVO pvo_teenage = new PopulationVO();
			pvo_teenage.setYear(j);
			pvo_teenage.setAge("10 - 19세");
			PopulationVO pvo_cheong = new PopulationVO();
			pvo_cheong.setYear(j);
			pvo_cheong.setAge("20 - 29세");
			PopulationVO pvo_jung = new PopulationVO();
			pvo_jung.setYear(j);
			pvo_jung.setAge("30 - 49세");
			PopulationVO pvo_jang = new PopulationVO();
			pvo_jang.setYear(j);
			pvo_jang.setAge("50 - 64세");
			PopulationVO pvo_no = new PopulationVO();
			pvo_no.setYear(j);
			pvo_no.setAge("65세 이상");
			
			for(int i = 0; i < ya_before.size(); i++) {
				
				if( j == ya_before.get(i).getYear() ) {

					String test = ya_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
						// 0 to 9
						pvo_young.setPopulation(pvo_young.getPopulation() + ya_before.get(i).getPopulation()); 
					} else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
						// 10 to 19
						pvo_teenage.setPopulation(pvo_teenage.getPopulation() + ya_before.get(i).getPopulation()); 
					} else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
						// 20 to 29
						pvo_cheong.setPopulation(pvo_cheong.getPopulation() + ya_before.get(i).getPopulation());
					} else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
						// 30 to 49
						pvo_jung.setPopulation(pvo_jung.getPopulation() + ya_before.get(i).getPopulation());
					} else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 50 to 64
						pvo_jang.setPopulation(pvo_jang.getPopulation() + ya_before.get(i).getPopulation());
					} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
							  || test.equals("100+") ) {
						// 65 up
						pvo_no.setPopulation(pvo_no.getPopulation() + ya_before.get(i).getPopulation());
					} else {
						// exception
					}
				}
			}
			
			ya.add(pvo_young);
			ya.add(pvo_teenage);
			ya.add(pvo_cheong);
			ya.add(pvo_jung);
			ya.add(pvo_jang);
			ya.add(pvo_no);
		}
		
		/*
		int youngCnt = 0;		// 0 to 9
		int teenageCnt = 0;		// 10 to 19
		int cheongCnt = 0;		// 20 to 29
		int jungCnt = 0;		// 30 to 49
		int jangCnt = 0;		// 50 to 64
		int noCnt = 0;			// 65 up
		for(int i = 0; i < ya_before.size(); i++) {
			
			String test = ya_before.get(i).getAge();
			if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
				// 0 to 9
				youngCnt += ya_before.get(i).getPopulation();
			} else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
				// 10 to 19
				teenageCnt += ya_before.get(i).getPopulation();
			} else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
				// 20 to 29
				cheongCnt += ya_before.get(i).getPopulation();
			} else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
				// 30 to 49
				jungCnt += ya_before.get(i).getPopulation();
			} else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
				// 50 to 64
				jangCnt += ya_before.get(i).getPopulation();
			} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
					  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
					  || test.equals("100+") ) {
				// 65 up
				noCnt += ya_before.get(i).getPopulation();
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
		
		ya.add(young);
		ya.add(teenage);
		ya.add(cheong);
		ya.add(jung);
		ya.add(jang);
		ya.add(no);
		*/
		
		//System.out.println("@@@ y2a_before: "+ya_before);
		//System.out.println("@@@ y2a_after: "+ya);
		
		return ya;
	}
	@Override
	public ArrayList<PopulationVO> year_age_dong(String dong) {
		return pm.year_age_dong(dong);
	}


	
	

}

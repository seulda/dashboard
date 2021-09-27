package tms.gj.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import tms.gj.domain.ItemVO;
import tms.gj.domain.PopulationVO;
import tms.gj.mapper.PopulationMapper;


@Service
@AllArgsConstructor
public class PopulationServiceImpl implements PopulationService {
	
	private PopulationMapper pm;
	
	
	@Override
	public int year2021_count() {
		return pm.year2021_count();
	}
	@Override
	public ArrayList<PopulationVO> year_count() {
		return pm.year_count();
	}
	@Override
	public ArrayList<PopulationVO> year_count_dong(String dong) {
		return pm.year_count_dong(dong);
	}


	@Override
	public ArrayList<PopulationVO> y2021_sex() {
		return pm.y2021_sex();
	}
	@Override
	public ArrayList<PopulationVO> y2021_sex_dong(String dong) {
		return pm.y2021_sex_dong(dong);
	}


	@Override
	public ArrayList<PopulationVO> year_age() {
		
		ArrayList<PopulationVO> ya_before = pm.year_age();
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
		
		//System.out.println("@@@ y2a_before: "+ya_before);
		//System.out.println("@@@ y2a_after: "+ya);
		
		return ya;
	}
	@Override
	public ArrayList<PopulationVO> year_age_dong(String dong) {
		
		ArrayList<PopulationVO> yad_before = pm.year_age_dong(dong);
		ArrayList<PopulationVO> yad = new ArrayList<PopulationVO>();

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
			
			for(int i = 0; i < yad_before.size(); i++) {
				
				if( j == yad_before.get(i).getYear() ) {

					String test = yad_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
						// 0 to 9
						pvo_young.setPopulation(pvo_young.getPopulation() + yad_before.get(i).getPopulation()); 
					} else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
						// 10 to 19
						pvo_teenage.setPopulation(pvo_teenage.getPopulation() + yad_before.get(i).getPopulation()); 
					} else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
						// 20 to 29
						pvo_cheong.setPopulation(pvo_cheong.getPopulation() + yad_before.get(i).getPopulation());
					} else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
						// 30 to 49
						pvo_jung.setPopulation(pvo_jung.getPopulation() + yad_before.get(i).getPopulation());
					} else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 50 to 64
						pvo_jang.setPopulation(pvo_jang.getPopulation() + yad_before.get(i).getPopulation());
					} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
							  || test.equals("100+") ) {
						// 65 up
						pvo_no.setPopulation(pvo_no.getPopulation() + yad_before.get(i).getPopulation());
					}
				}
			}
			
			yad.add(pvo_young);
			yad.add(pvo_teenage);
			yad.add(pvo_cheong);
			yad.add(pvo_jung);
			yad.add(pvo_jang);
			yad.add(pvo_no);
		}
		
		//System.out.println("@@@ yad_before: "+yad_before);
		//System.out.println("@@@ yad_after: "+yad);
		
		return yad;
	}
	
	
	
	
	
	
	@Override
	public ArrayList<PopulationVO> year_age_test() {
		
		ArrayList<PopulationVO> ya_before = pm.year_age();
		ArrayList<PopulationVO> ya = new ArrayList<PopulationVO>();

		for(int j = 2013; j < 2022; j++) {
			
			PopulationVO pvo_one = new PopulationVO();
			pvo_one.setYear(j);
			pvo_one.setAge("0 - 14세");
			PopulationVO pvo_two = new PopulationVO();
			pvo_two.setYear(j);
			pvo_two.setAge("15 - 64세");
			PopulationVO pvo_three = new PopulationVO();
			pvo_three.setYear(j);
			pvo_three.setAge("65세 이상");
			
			for(int i = 0; i < ya_before.size(); i++) {
				
				if( j == ya_before.get(i).getYear() ) {

					String test = ya_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") || test.equals("10 - 14세") ) {
						// 0 to 14
						pvo_one.setPopulation(pvo_one.getPopulation() + ya_before.get(i).getPopulation()); 
					} else if( test.equals("15 - 19세") || test.equals("20 - 24세") || test.equals("25 - 29세")
							 || test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세")
							 || test.equals("45 - 49세") || test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 15 to 64
						pvo_two.setPopulation(pvo_two.getPopulation() + ya_before.get(i).getPopulation()); 
					} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
							  || test.equals("100+") ) {
						// 65 up
						pvo_three.setPopulation(pvo_three.getPopulation() + ya_before.get(i).getPopulation());
					}
				}
			}
			
			ya.add(pvo_one);
			ya.add(pvo_two);
			ya.add(pvo_three);
		}
		
		//System.out.println("@@@ y2a_before: "+ya_before);
		//System.out.println("@@@ y2a_after: "+ya);
		
		return ya;
	}
	@Override
	public ArrayList<PopulationVO> year_age_dong_test(String dong) {
		
		ArrayList<PopulationVO> yad_before = pm.year_age_dong(dong);
		ArrayList<PopulationVO> yad = new ArrayList<PopulationVO>();

		for(int j = 2013; j < 2022; j++) {
			
			PopulationVO pvo_one = new PopulationVO();
			pvo_one.setYear(j);
			pvo_one.setAge("0 - 14세");
			PopulationVO pvo_two = new PopulationVO();
			pvo_two.setYear(j);
			pvo_two.setAge("15 - 64세");
			PopulationVO pvo_three = new PopulationVO();
			pvo_three.setYear(j);
			pvo_three.setAge("65세 이상");
			
			for(int i = 0; i < yad_before.size(); i++) {
				
				if( j == yad_before.get(i).getYear() ) {

					String test = yad_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") || test.equals("10 - 14세") ) {
						// 0 to 14
						pvo_one.setPopulation(pvo_one.getPopulation() + yad_before.get(i).getPopulation()); 
					} else if( test.equals("15 - 19세") || test.equals("20 - 24세") || test.equals("25 - 29세")
							 || test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세")
							 || test.equals("45 - 49세") || test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 15 to 64
						pvo_two.setPopulation(pvo_two.getPopulation() + yad_before.get(i).getPopulation()); 
					} else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세") || test.equals("95 - 99세")
							  || test.equals("100+") ) {
						// 65 up
						pvo_three.setPopulation(pvo_three.getPopulation() + yad_before.get(i).getPopulation());
					}
				}
			}
			
			yad.add(pvo_one);
			yad.add(pvo_two);
			yad.add(pvo_three);
		}
		
		//System.out.println("@@@ y2a_before: "+ya_before);
		//System.out.println("@@@ y2a_after: "+ya);
		
		return yad;
	}
	
	
	
	
	
	
	
	
	@Override
	public ArrayList<ItemVO> year_item() {
		return pm.year_item();
	}
	@Override
	public ArrayList<ItemVO> year_item_dong(String dong) {
		return pm.year_item_dong(dong);
	}


	@Override
	public String nameset(String dn) {
		
		if(dn.equals("dong01")) {
			return "거제면";
		} else if(dn.equals("dong02")) {
			return "고현동";
		} else if(dn.equals("dong03")) {
			return "남부면";
		} else if(dn.equals("dong04")) {
			return "능포동";
		} else if(dn.equals("dong05")) {
			return "동부면";
		} else if(dn.equals("dong06")) {
			return "둔덕면";
		} else if(dn.equals("dong07")) {
			return "사등면";
		} else if(dn.equals("dong08")) {
			return "상문동";
		} else if(dn.equals("dong09")) {
			return "수양동";
		} else if(dn.equals("dong10")) {
			return "아주동";
		} else if(dn.equals("dong11")) {
			return "연초면";
		} else if(dn.equals("dong12")) {
			return "옥포1동";
		} else if(dn.equals("dong13")) {
			return "옥포2동";
		} else if(dn.equals("dong14")) {
			return "일운면";
		} else if(dn.equals("dong15")) {
			return "장목면";
		} else if(dn.equals("dong16")) {
			return "장승포동";
		} else if(dn.equals("dong17")) {
			return "장평동";
		} else if(dn.equals("dong18")) {
			return "하청면";
		}
		
		return "error";
	}
	

}

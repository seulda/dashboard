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
				
				int count = 0;
				
				if( j == ya_before.get(i).getYear() ) {
					
					count++;

					String test = ya_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
						// 0 to 9
						pvo_young.setPopulation(pvo_young.getPopulation() + ya_before.get(i).getPopulation()); 
					} 
					else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
						// 10 to 19
						pvo_teenage.setPopulation(pvo_teenage.getPopulation() + ya_before.get(i).getPopulation()); 
					} 
					else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
						// 20 to 29
						pvo_cheong.setPopulation(pvo_cheong.getPopulation() + ya_before.get(i).getPopulation());
					} 
					else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
						// 30 to 49
						pvo_jung.setPopulation(pvo_jung.getPopulation() + ya_before.get(i).getPopulation());
					} 
					else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 50 to 64
						pvo_jang.setPopulation(pvo_jang.getPopulation() + ya_before.get(i).getPopulation());
					} 
					else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세")
							  || test.equals("95 - 99세") || test.equals("100+") ) {
						// 65 up
						pvo_no.setPopulation(pvo_no.getPopulation() + ya_before.get(i).getPopulation());
					}
					
					if(count == 21) {
						break;
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
				
				int count = 0;
				
				if( j == yad_before.get(i).getYear() ) {
					
					count++;

					String test = yad_before.get(i).getAge();
					
					if( test.equals("0 - 4세") || test.equals("5 - 9세") ) {
						// 0 to 9
						pvo_young.setPopulation(pvo_young.getPopulation() + yad_before.get(i).getPopulation()); 
					} 
					else if( test.equals("10 - 14세") || test.equals("15 - 19세") ) {
						// 10 to 19
						pvo_teenage.setPopulation(pvo_teenage.getPopulation() + yad_before.get(i).getPopulation()); 
					} 
					else if( test.equals("20 - 24세") || test.equals("25 - 29세") ) {
						// 20 to 29
						pvo_cheong.setPopulation(pvo_cheong.getPopulation() + yad_before.get(i).getPopulation());
					} 
					else if( test.equals("30 - 34세") || test.equals("35 - 39세") || test.equals("40 - 44세") || test.equals("45 - 49세") ) {
						// 30 to 49
						pvo_jung.setPopulation(pvo_jung.getPopulation() + yad_before.get(i).getPopulation());
					} 
					else if( test.equals("50 - 54세") || test.equals("55 - 59세") || test.equals("60 - 64세") ) {
						// 50 to 64
						pvo_jang.setPopulation(pvo_jang.getPopulation() + yad_before.get(i).getPopulation());
					} 
					else if( test.equals("65 - 69세") || test.equals("70 - 74세") || test.equals("75 - 79세")
							  || test.equals("80 - 84세") || test.equals("85 - 89세") || test.equals("90 - 94세")
							  || test.equals("95 - 99세") || test.equals("100+") ) {
						// 65 up
						pvo_no.setPopulation(pvo_no.getPopulation() + yad_before.get(i).getPopulation());
					}
					
					if(count == 21) {
						break;
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
		
		return yad;
	}
	
	
	@Override
	public ArrayList<ItemVO> year_item() {
		
		ArrayList<ItemVO> yi_before = pm.year_item();
		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();
		
		for(int j = 2013; j < 2022; j++) {
			
			ItemVO ivo_one = new ItemVO();
			ivo_one.setYear(j);
			ivo_one.setItem("출생");
			ItemVO ivo_two = new ItemVO();
			ivo_two.setYear(j);
			ivo_two.setItem("사망");
			ItemVO ivo_three = new ItemVO();
			ivo_three.setYear(j);
			ivo_three.setItem("자연증가");
			ItemVO ivo_four = new ItemVO();
			ivo_four.setYear(j);
			ivo_four.setItem("혼인");
			ItemVO ivo_five = new ItemVO();
			ivo_five.setYear(j);
			ivo_five.setItem("이혼");
			
			for(int i = 0; i < yi_before.size(); i++) {
				
				int count = 0;
				
				if( j == yi_before.get(i).getYear() ) {
					
					count++;

					String test = yi_before.get(i).getItem();
					
					if( test.equals("출생건수") ) {
						ivo_one.setPopulation(yi_before.get(i).getPopulation()); 
					} 
					else if( test.equals("사망건수") ) {
						ivo_two.setPopulation(yi_before.get(i).getPopulation()); 
					} 
					else if( test.equals("자연증가건수") ) {
						ivo_three.setPopulation(yi_before.get(i).getPopulation());
					} 
					else if( test.equals("혼인건수") ) {
						ivo_four.setPopulation(yi_before.get(i).getPopulation());
					} 
					else if( test.equals("이혼건수") ) {
						ivo_five.setPopulation(yi_before.get(i).getPopulation());
					}
				}
				
				if(count == 5) {
					break;
				}
			}
			
			yi.add(ivo_one);
			yi.add(ivo_two);
			yi.add(ivo_three);
			yi.add(ivo_four);
			yi.add(ivo_five);
		}
		
		return yi;
	}
	@Override
	public ArrayList<ItemVO> year_item_dong(String dong) {
		
		ArrayList<ItemVO> yi_before = pm.year_item_dong(dong);
		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();
		
		for(int j = 2013; j < 2022; j++) {
			
			ItemVO ivo_one = new ItemVO();
			ivo_one.setYear(j);
			ivo_one.setItem("출생");
			ItemVO ivo_two = new ItemVO();
			ivo_two.setYear(j);
			ivo_two.setItem("사망");
			ItemVO ivo_three = new ItemVO();
			ivo_three.setYear(j);
			ivo_three.setItem("자연증가");
			ItemVO ivo_four = new ItemVO();
			ivo_four.setYear(j);
			ivo_four.setItem("혼인");
			ItemVO ivo_five = new ItemVO();
			ivo_five.setYear(j);
			ivo_five.setItem("이혼");
			
			for(int i = 0; i < yi_before.size(); i++) {
				
				int count = 0;
				
				if( j == yi_before.get(i).getYear() ) {
					
					count++;

					String test = yi_before.get(i).getItem();
					
					if( test.equals("출생건수") ) {
						ivo_one.setPopulation(yi_before.get(i).getPopulation()); 
					} 
					else if( test.equals("사망건수") ) {
						ivo_two.setPopulation(yi_before.get(i).getPopulation()); 
					} 
					else if( test.equals("자연증가건수") ) {
						ivo_three.setPopulation(yi_before.get(i).getPopulation());
					} 
					else if( test.equals("혼인건수") ) {
						ivo_four.setPopulation(yi_before.get(i).getPopulation());
					} 
					else if( test.equals("이혼건수") ) {
						ivo_five.setPopulation(yi_before.get(i).getPopulation());
					}
				}
				
				if(count == 5) {
					break;
				}
			}
			
			yi.add(ivo_one);
			yi.add(ivo_two);
			yi.add(ivo_three);
			yi.add(ivo_four);
			yi.add(ivo_five);
		}
		
		return yi;
	}
	

}

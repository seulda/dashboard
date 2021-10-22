package tms.gj.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

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
	public ArrayList<PopulationVO> year_age(String dong) {
		
		ArrayList<PopulationVO> ya_before = pm.year_age(dong);
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
					
				}
				
				if(count == 21 || j < ya_before.get(i).getYear()) {
					break;
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
	public ArrayList<ItemVO> year_item(String dong) {
		
//		ArrayList<ItemVO> yi_before = pm.year_item(dong);
//		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();
//		
//		for(int j = 2013; j < 2022; j++) {
//			
//			ItemVO ivo_one = new ItemVO();
//			ivo_one.setYear(j);
//			ivo_one.setItem("출생");
//			ItemVO ivo_two = new ItemVO();
//			ivo_two.setYear(j);
//			ivo_two.setItem("사망");
//			ItemVO ivo_three = new ItemVO();
//			ivo_three.setYear(j);
//			ivo_three.setItem("자연증가");
//			ItemVO ivo_four = new ItemVO();
//			ivo_four.setYear(j);
//			ivo_four.setItem("혼인");
//			ItemVO ivo_five = new ItemVO();
//			ivo_five.setYear(j);
//			ivo_five.setItem("이혼");
//			
//			for(int i = 0; i < yi_before.size(); i++) {
//				
//				int count = 0;
//				
//				if( j == yi_before.get(i).getYear() ) {
//					
//					count++;
//
//					String test = yi_before.get(i).getItem();
//					
//					if( test.equals("출생건수") ) {
//						ivo_one.setPopulation(yi_before.get(i).getPopulation()); 
//					} 
//					else if( test.equals("사망건수") ) {
//						ivo_two.setPopulation(yi_before.get(i).getPopulation()); 
//					} 
//					else if( test.equals("자연증가건수") ) {
//						ivo_three.setPopulation(yi_before.get(i).getPopulation());
//					} 
//					else if( test.equals("혼인건수") ) {
//						ivo_four.setPopulation(yi_before.get(i).getPopulation());
//					} 
//					else if( test.equals("이혼건수") ) {
//						ivo_five.setPopulation(yi_before.get(i).getPopulation());
//					}
//				}
//				
//				if(count == 5 || j < yi_before.get(i).getYear()) {
//					break;
//				}
//			}
//			
//			yi.add(ivo_one);
//			yi.add(ivo_two);
//			yi.add(ivo_three);
//			yi.add(ivo_four);
//			yi.add(ivo_five);
//		}
//		
//		return yi;
		
		return pm.year_item(dong);
	}
	
	
	
	@Override
	public String getPopulationAPI(String dong) throws IOException {
		
		StringBuilder apiUrl = new StringBuilder("http://localhost:8080/vurix-dms/api/v1/population/getPopulation");
		if (dong != null) {
			apiUrl.append("?dong=").append(dong);
		}
		URL url = new URL(apiUrl.toString());
		
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Go getPopulationApi Response code: " + conn.getResponseCode());
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        } else {
//            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        
//		System.out.println("getPopulationAPI result: " + sb.toString());
        
        return sb.toString();
	}
	
	@Override
	public String getPopulationAPI_REST(String dong) throws IOException {
		
		StringBuilder apiUrl = new StringBuilder("http://localhost:8080/vurix-dms/api/v1/population/getPopulation");
		if (dong != null) {
			apiUrl.append("?dong=").append(dong);
		}

//		HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
//		factory.setReadTimeout(5000);    								// 읽기 시간 초과
//		factory.setConnectTimeout(3000); 								// 호출 (연결) 시간 초과
//		HttpClient httpClient = HttpClientBuilder.create()
//				.setMaxConnTotal(100) 									// connection pool 적용
//				.setMaxConnPerRoute(5)  								// connection pool 적용
//				.build();
//		factory.setHttpClient(httpClient); 								// 동기실행에 사용될 HttpClient 세팅
//		RestTemplate restTemplate = new RestTemplate(factory);
		
		RestTemplate restTemplate = new RestTemplate();

		//요청 후 응답
		String response = restTemplate.getForObject(apiUrl.toString(), String.class);
//		System.out.println("RestTemplate Test result: " + response.toString());

//		Object ObjectResult = restTemplate.getForObject(apiUrl, Object.class);
//		System.out.println("RestTemplate Test object result: " + ObjectResult);
		
		return response.toString();
	}
	
	
	@Override
	public ArrayList<ItemVO> go_year_item(JSONArray yiObject) {
		
		ArrayList<ItemVO> yi = new ArrayList<ItemVO>();
		
		for (int i = 0; i <  yiObject.length(); i++) {
			
			ItemVO ivo = new ItemVO();
			JSONObject iobj = yiObject.getJSONObject(i);

			ivo.setYear(iobj.getInt("year"));
			ivo.setItem(iobj.getString("item"));
			ivo.setPopulation(iobj.getInt("population"));
			
			yi.add(ivo);
		}
		
		return yi;
	}

}

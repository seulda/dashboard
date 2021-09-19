package tms.gj.service;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import tms.gj.mapper.PopulationMapper;


@Service
@AllArgsConstructor
public class PopulationServiceImpl implements PopulationService {
	
	private PopulationMapper pm;
	
	
	@Override
	public void testCount() {
		System.out.println("test population count : " + pm.populationCount());
	}
	

}

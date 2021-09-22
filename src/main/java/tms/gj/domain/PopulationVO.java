package tms.gj.domain;

import lombok.Data;

@Data
public class PopulationVO {

	private int idx;			// number
	private int year;			// 연도
	private String dong;		// 행정구역 면/동
	private String age;			// 연령대 : 5세단위
	private String sex;			// 성별
	private int population;		// 인구수
	private float per;			// percentage
	
}

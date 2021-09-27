package tms.gj.domain;

import lombok.Data;

@Data
public class ItemVO {

	// private int idx;			// number
	private int year;			// 연도
	private String item;		// 인구동태 변화 요인
	private Integer population;	// 인구수
	// private String dong;		// 행정구역 면/동
	
}

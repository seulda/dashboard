package tms.gj.domain;

import lombok.Data;

@Data
public class CampaignVO {

	private int idx;					// number
	private String category;			// 분류
	private String name;	         	// 공약명
	private String location;			// 사업위치
	private String term;				// 임기내/외
	private String businessPeriod;		// 사업기간
	private String department;			// 부서
	private String section;				// 담당
	private String manager;				// 담당자
	private String fulfil;				// 자체점검 - 이행도
	private int rate;       			// 자체점검 - 이행률
	
	int successCount;                   //진행현황 - 분모
	int totalCount;                     //진행현황 - 분자
	int successRate;                    //진행률
}

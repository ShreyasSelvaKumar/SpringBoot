package com.resumeBlog.ResumeBlog.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
public class GeneralInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int gid;
	String title;
	String fullName;
	String phoneNo;
	String country;
	String state;
	String place;

	String schoolName;
	float schoolPercentile;
	String intermediateCollege;
	float intermediateCollegePercentile;
	String UgName;
	float UgScore;

	String PgName;
	float PgScore;

	String projectName;
	int ptimePeriod;
	int teamCount;

	String internshipCompanyName;
	int itimePeriod;
	String internRole;


}

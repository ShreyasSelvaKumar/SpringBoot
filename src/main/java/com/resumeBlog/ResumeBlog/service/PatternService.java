package com.resumeBlog.ResumeBlog.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resumeBlog.ResumeBlog.model.FresherResume;
import com.resumeBlog.ResumeBlog.repositories.FresherResumeRepository;

@Service
public class PatternService {
	
	@Autowired
	FresherResumeRepository fresherResumeRepository;

	public void authorizeUSERid(String uniqueId) {
		
		
	}
	
	public void addFresherResume(FresherResume f) {
		fresherResumeRepository.save(f);
		System.out.println("Success");
	}
	public void deleteFresherResume(int id) {
		FresherResume fr=fresherResumeRepository.findById(id).get();
		fresherResumeRepository.delete(fr);
		System.out.println("Deleted ");
	}
	public FresherResume getFresherResume(int id) {
		FresherResume fr=fresherResumeRepository.findById(id).get();
		return fr;
	}

	public String generateUniqueId(FresherResume f1) {
		String phonenumber=f1.getGeneralInfo().getPhoneNo();
		String phonenumberMapping=phonenumber.substring(6, 10);
		int sum=0;
		for(int i=0;i<phonenumberMapping.length();i++) {
			char c=phonenumberMapping.charAt(i);
			int a=c-'0';
			sum=sum+a;
		}
		int applicationNumber=f1.getFid();
		float  internPlusSchoolmarks=f1.getGeneralInfo().getSchoolPercentile()+f1.getGeneralInfo().getIntermediateCollegePercentile();
		String firstname=f1.getGeneralInfo().getPlace().substring(0, 1);
		
		return "yb"+sum+"zzA"+applicationNumber+"qqN"+internPlusSchoolmarks+firstname;
	}
	
	public boolean VerifyUniqueId(String uniqueId) {
		int startIndex=uniqueId.indexOf("zzA");
		int endIndex=uniqueId.indexOf("qqN");
		int applicationNo=Integer.parseInt(uniqueId.substring(startIndex+3, endIndex));
		
		String OriginaluniqueId=generateUniqueId(getFresherResume(applicationNo));
		if(uniqueId.equals(OriginaluniqueId)) {
			return true;
		}
		return false;
	}
	public FresherResume getResumeByUniqueId(String uniqueId) {
		int startIndex=uniqueId.indexOf("zzA");
		int endIndex=uniqueId.indexOf("qqN");
		int applicationNo=Integer.parseInt(uniqueId.substring(startIndex+3, endIndex));
		
		return getFresherResume(applicationNo);
		
	}
	
}

package com.resumeBlog.ResumeBlog.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;




@Entity
public class SkillsandCertification {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int scid;
	
	@OneToMany(cascade=CascadeType.ALL)
	List<Skills> skills;
	
	@OneToMany(cascade=CascadeType.ALL)
	List<Certifications> certifications;
	public SkillsandCertification(List<Skills> skills, List<Certifications> certifications) {
		super();
		this.skills = skills;
		this.certifications = certifications;
	}
	public SkillsandCertification() {
		super();
	}
	public List<Skills> getSkills() {
		return skills;
	}
	public void setSkills(List<Skills> skills) {
		this.skills = skills;
	}
	public List<Certifications> getCertifications() {
		return certifications;
	}
	public void setCertifications(List<Certifications> certifications) {
		this.certifications = certifications;
	}
	@Override
	public String toString() {
		return "SkillsandCertification [skills=" + skills + ", certifications=" + certifications + "]";
	}
	
}

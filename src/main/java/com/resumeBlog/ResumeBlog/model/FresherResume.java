package com.resumeBlog.ResumeBlog.model;



import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class FresherResume {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int fid;
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="GID")
	GeneralInfo generalInfo;
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="SCID")
	SkillsandCertification skillsandCertification;
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="OID")
	OthersInformation othersInformation;
	
}

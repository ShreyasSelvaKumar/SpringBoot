package com.resumeBlog.ResumeBlog.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
public class OthersInformation {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int oid;
	String about;
	String gitlink;
	String email;
	String linkedin;
	String blogAndOther;
	String hobbies;
	String acheivement1;
	String acheivement2;
	
}

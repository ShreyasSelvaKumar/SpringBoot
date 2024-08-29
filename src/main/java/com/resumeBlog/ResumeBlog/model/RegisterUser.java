package com.resumeBlog.ResumeBlog.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
@Entity
public class RegisterUser {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	@NotBlank(message = "Name can't be blank")
	String name;
	@NotBlank(message = "Email can't be blank")
	@Email(message = "BAD Email format")
	String email;
	@Size(max = 10,min = 10,message = "10 digit needed")
	String phoneNo;
	@NotBlank(message = "Password can't be blank")
	String password;
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="FID")
	FresherResume fresherResume;
}

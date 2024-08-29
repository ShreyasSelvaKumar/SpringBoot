package com.resumeBlog.ResumeBlog.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class LoginUser {
	@NotBlank(message = "Email can't be blank")
	@Email(message = "BAD Email format")
	String email;
	@NotBlank(message = "Password can't be blank")
	String password;
}

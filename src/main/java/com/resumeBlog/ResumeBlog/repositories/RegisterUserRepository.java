package com.resumeBlog.ResumeBlog.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.resumeBlog.ResumeBlog.model.RegisterUser;


@Repository
public interface RegisterUserRepository extends CrudRepository<RegisterUser, Integer> {

	<Optional>RegisterUser findByEmail(String email);
	RegisterUser findByEmailAndPassword(String email,String password);

}

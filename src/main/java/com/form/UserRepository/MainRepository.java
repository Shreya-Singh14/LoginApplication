package com.form.UserRepository;

import java.util.List;

import java.util.Optional;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.form.Dao.EntityClass;


@Repository
public interface MainRepository extends CrudRepository<EntityClass,Integer> {

	Optional<EntityClass> findByUsernameAndPassword(String username, String password);
	List<EntityClass> findAll();
	

}

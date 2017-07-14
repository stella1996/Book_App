package com.bookapp.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.bookapp.model.User;


public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByEmailAndPassword(String email, String password);

	@Transactional
	@Modifying
	@Query("UPDATE User u SET u.email = ?1,u.password=?2 WHERE u.name =?3")
	public int update(String email, String password, String name);

}
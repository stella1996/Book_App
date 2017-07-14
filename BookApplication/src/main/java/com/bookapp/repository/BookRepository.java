package com.bookapp.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.bookapp.model.Book;


public interface BookRepository extends JpaRepository<Book, Long> {
	
	public List<Book> findByOrderByPriceAsc();
	public List<Book> findByOrderByPriceDesc();
	
	
	@Transactional
	@Modifying
	@Query("DELETE FROM Book b WHERE  b.name=?1")
	public int deletebook( String name);
	
	@Transactional
	@Modifying
	@Query("UPDATE Book b SET b.price = ?2 WHERE b.name =?1")
	public int update( String name,Integer price);

	



}
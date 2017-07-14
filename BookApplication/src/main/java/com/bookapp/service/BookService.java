package com.bookapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookapp.model.Book;
import com.bookapp.repository.BookRepository;



@Service
public class BookService {
	@Autowired
	private BookRepository bookRepo;

	public List<Book> findAll() {
		return bookRepo.findAll();
	}

	public Book findOne(Long id) {
		return bookRepo.findOne(id);
	}
	public List<Book> findByOrderByPriceAsc() {
		return bookRepo.findByOrderByPriceAsc();
	}
	public List<Book> findByOrderByPriceDesc() {
		return bookRepo.findByOrderByPriceDesc();
	}

	
	public String save(@RequestParam("name") String name, @RequestParam("price") Integer price,
			@RequestParam("released_date") @DateTimeFormat(pattern = "dd/MM/yyyy") String released_date)  {
		Book book= new Book();
		book.setName(name);
		book.setPrice(price);
		book.setReleased_date(released_date);
				 bookRepo.save(book);
				return "redirect:../books/book";
		
	}
	
	public String delete(String name)

	{
		Book book=new Book(); 
	    book.setName(name);
		bookRepo.deletebook(name);
		return "redirect:../books/book";
	}

	public String update(String name, Integer price) {
		// TODO Auto-generated method stub
		
		Book book= new Book();
		book.setName(name);
		book.setPrice(price);
		bookRepo.update(name,price);
		return "redirect:../books/book";
	}

	
	

	
	
}

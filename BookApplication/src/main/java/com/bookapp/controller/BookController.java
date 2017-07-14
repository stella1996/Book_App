package com.bookapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookapp.model.Book;
import com.bookapp.service.BookService;
 
@Controller
@RequestMapping("/books")

public class BookController {
 
	
	@Autowired
	private BookService bookService;

	@GetMapping("/list")

	public String findAll(ModelMap modelMap) {
		List<Book> findAll = bookService.findAll();
		modelMap.addAttribute("BOOK_SALES", findAll);
		return "book/listbook";
	}
	@GetMapping("/ascList")

	public String findByOrderByPriceAsc(ModelMap modelMap) {
		List<Book> findByOrderByPriceAsc = bookService.findByOrderByPriceAsc();
		modelMap.addAttribute("BOOK_SALES", findByOrderByPriceAsc);
		return "book/listbook";
	}
	@GetMapping("/descList")

	public String findByOrderByPriceDesc(ModelMap modelMap) {
		List<Book> findByOrderByPriceDesc = bookService.findByOrderByPriceDesc();
		modelMap.addAttribute("BOOK_SALES", findByOrderByPriceDesc);
		return "book/listbook";
	}

	@GetMapping("/book")

	public String findAllBook(ModelMap modelMap) {
		List<Book> findAll = bookService.findAll();
		modelMap.addAttribute("BOOK_SALES", findAll);
		return "book/book";
	}
	@GetMapping("/listallbook")

	public String findAllBooks(ModelMap modelMap) {
		List<Book> findAll = bookService.findAll();
		modelMap.addAttribute("BOOK_SALES", findAll);
		return "book/listallbooks";
	}
	

	@GetMapping("/{id}")

	public String view(@PathVariable("id") Long id, ModelMap modelMap, HttpSession session) {
		System.out.println("ShowBook:" + id);

		Book book = bookService.findOne(id);
		session.setAttribute("book", book);
		modelMap.addAttribute("BOOK_ORDER", book);

		return "order/addtocart";

	}

}

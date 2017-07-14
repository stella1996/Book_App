package com.bookapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookapp.model.Order;
import com.bookapp.model.User;
import com.bookapp.service.BookService;
import com.bookapp.service.OrderService;
import com.bookapp.service.UserService;



@Controller
@RequestMapping("/admin")

public class AdminController {
	@Autowired
	private BookService bookService;
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	

	@PostMapping("/save")
	public String save(@RequestParam("name") String name, @RequestParam("price") Integer price,
			@RequestParam("released_date") @DateTimeFormat(pattern = "dd/MM/yyyy") String released_date) {

		return bookService.save(name, price, released_date);
	}

	@PostMapping("/update")
	public String update(@RequestParam("name") String name, @RequestParam("price") Integer price) {

		return bookService.update(name, price);
	}

	@PostMapping("/delete")
	public String delete(@RequestParam("name") String name) {

		return bookService.delete(name);
	}
	@GetMapping("/listallusers")
	public String findAll(ModelMap modelmap)
	{
		List<User> findAll=userService.findAll();

		modelmap.addAttribute("USERLIST", findAll);
		return "admin/listallusers";
	}
	@GetMapping("/listallorders")
	public String findAllOrders(ModelMap modelmap)
	{
		List<Order> findAll=orderService.findAll();

		modelmap.addAttribute("ORDERLIST", findAll);
		return "admin/listallorders";
	}
}

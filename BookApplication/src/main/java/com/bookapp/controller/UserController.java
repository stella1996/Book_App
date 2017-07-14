package com.bookapp.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookapp.form.RegistrationForm;
import com.bookapp.model.User;
import com.bookapp.repository.BookRepository;
import com.bookapp.repository.UserRepository;
import com.bookapp.service.UserService;


 
@Controller
@RequestMapping("/users")

public class UserController {

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private BookRepository bookRepo;
	@Autowired
	private UserService userService;

	@PostMapping("/update")
	public String update(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("password") String password) throws Exception {

		return userService.update(name, email, password);
	}

	@PostMapping("/review")
	public String review(@RequestParam("name") String name, @RequestParam("review") String review) throws Exception {

		return userService.review(name, review);
	}

	@PostMapping("/save")
	public String save(@ModelAttribute @Valid RegistrationForm regData, BindingResult result, ModelMap modelMap,
			HttpSession session) throws Exception {
		try {
			if (result.hasErrors()) {
				modelMap.addAttribute("errors", result.getAllErrors());
				modelMap.addAttribute("regData", regData);
				return "user/register";
			} else {
				userService.save(regData);

				return "user/login";
			}

		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("regData", regData);
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/register";
		}

	}

	@GetMapping("/forgot")
	public String forgot() {
		return "user/reset";
	}

	@GetMapping("/login")
	public String login() {
		return "user/login";
	}

	@PostMapping("/validate")

	public String findByEmailAndPassword(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {
		User user = userRepo.findByEmailAndPassword(email, password);

		if (user != null) {
			System.out.println("valid user");
			session.setAttribute("user", user);
			return "redirect:../users/admin";
		} else {
			System.out.println("invalid user");
			return "user/register";
		}

	}
	@GetMapping("/admin")

	public String admin(HttpSession session) {
		User user = (User) session.getAttribute("user");
        String username=user.getName();

		if(username.equals("admin"))
		{
			return "admin";
		}
		else
		{
			return "user/welcome";

}
		

	}

	@GetMapping("/logout")
	public String signOut(HttpSession session) {
		session.invalidate();
		return "user/login";
	}
}
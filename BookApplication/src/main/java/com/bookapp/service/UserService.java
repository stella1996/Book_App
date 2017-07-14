package com.bookapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookapp.form.RegistrationForm;
import com.bookapp.model.User;
import com.bookapp.repository.UserRepository;
import com.bookapp.util.EmailUtil;



@Service
public class UserService {
	@Autowired
	private UserRepository userRepo;

	@Autowired
	private EmailUtil emailutil;

	public String save(RegistrationForm regData) throws Exception {
		User user = new User();

		user.setName(regData.getName());
		user.setEmail(regData.getEmail());
		user.setPassword(regData.getPassword());

		userRepo.save(user);
		String subject = "Your account has been created";
		String body = "Welcome to Revature ! You can login to your account !.Your UserName:"+regData.getName()+".Your PassWord:"+regData.getPassword();

		String email = regData.getEmail();
		emailutil.send(email, subject, body);
		return "user/login";

	}

	public String update(String name, String email, String password) throws Exception {
		User user = new User();
		user.setEmail(email);
		user.setName(name);
		user.setPassword(password);

		userRepo.update(email, password, name);
		String subject = "Your password has been reseted";
		String body = "Welcome to Revature ! You can login to your account !.Your UserName:"+user.getName()+".Your New PassWord:"+user.getPassword();

		String useremail = user.getEmail();
		emailutil.send(useremail, subject, body);
		return "user/login";

	}

	public String review(String name, String review) throws Exception {

		String subject = "Review was given by " + name;
		String body = review;
		String email = "stelladavies29@gmail.com";
		emailutil.review(email, subject, body);
		return "order/reviewSubmit";
	}

	public  List<User> findAll() {
		return userRepo.findAll();
	}
}

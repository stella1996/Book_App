package com.bookapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookapp.model.Order;
import com.bookapp.repository.OrderItemRepository;
import com.bookapp.repository.OrderRepository;



@Service
public class OrderService {

	@Autowired
	private OrderItemRepository orderitemRepo;
	@Autowired
	private OrderRepository orderRepo;

	public void save(Order order) {
		orderRepo.save(order);

	}

	public List<Order> findOrderByUserId(Integer userId) {
		return orderRepo.findOrderByUserId(userId);
	}

	public Order findOne(Long id) {
		return orderRepo.findOne(id);
	}

	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return orderRepo.findAll();
	}

}

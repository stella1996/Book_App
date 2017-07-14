package com.bookapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bookapp.model.OrderItem;


public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

}
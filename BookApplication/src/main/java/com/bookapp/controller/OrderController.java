package com.bookapp.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookapp.model.Order;
import com.bookapp.model.OrderItem;
import com.bookapp.model.User;
import com.bookapp.service.OrderService;
import com.bookapp.util.EmailUtil;


@Controller
@RequestMapping("/order")
public class OrderController {
	

	@Autowired
	private OrderService orderservice;

	@Autowired
	private EmailUtil emailutil;

	@GetMapping("/review")
	public String login() {
		return "order/review";
	}

	@GetMapping("/myorders")

	public String myOrders(ModelMap modelMap, HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Order> list = orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/MyOrders";
	}

	@GetMapping("/myorderedlist")
	public String myOrderedList(ModelMap modelMap, HttpSession session) {
		User user = (User) session.getAttribute("user");

		List<Order> list = orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/MyOrderedList";

	}

	@GetMapping("/mycancelledlist")
	public String myCancelledList(ModelMap modelMap, HttpSession session) {
		User user = (User) session.getAttribute("user");

		List<Order> list = orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/MyCancelledList";

	}

	@GetMapping("/remove")
	public String remove(@RequestParam("id") Integer id, HttpSession session, ModelMap modelMap) {

		Order order = (Order) session.getAttribute("MY_CART");

		if (order != null && order.getOrderItems().size() > 0) {
			List<OrderItem> orderItems = order.getOrderItems();
			OrderItem itemSelected = orderItems.get(id);
			orderItems.remove(itemSelected);
			order.setOrderItems(orderItems);
			session.setAttribute("MY_CART", order);
		}

		return "order/Listcartitems";

	}

	@PostMapping("/save")
	public String save(@RequestParam("offer_amount")Integer totalAmount, HttpSession session) throws Exception {
		

System.out.println(totalAmount);
		Order orderInsideCart = (Order) session.getAttribute("MY_CART");
		if (orderInsideCart != null && orderInsideCart.getOrderItems().size() > 0) {
			
			orderInsideCart.setTotalPrice(totalAmount);
			orderservice.save(orderInsideCart);
			String subject = "Order Confirmation";
			String body = "The items you ordered (Order Id:" + orderInsideCart.getId()
					+ ") which has the total cost of Rs:" + orderInsideCart.getTotalPrice()
					+ " will be dispatched as soon as possible.";
			User user = (User) session.getAttribute("user");
			String email = user.getEmail();
			emailutil.order(email, subject, body);
			session.removeAttribute("MY_CART");
		}

		return "redirect:../order/myorders";

	}


	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") Long orderId, @RequestParam("status") String status,
			HttpSession session) throws Exception {
		Order order = orderservice.findOne(orderId);
		if ("CANCELLED".equals(status)) {
			order.setCancelledDate(LocalDate.now());

		}

		else if ("DELIVERED".equals(status)) {
			order.setDeliveredDate(LocalDate.now());
		}
        
		order.setStatus(status);
		orderservice.save(order);
		
		return "redirect:../order/myorders";
		
	}
}

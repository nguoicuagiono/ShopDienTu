package com.website.fpoly.service.impl;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.fpoly.entities.Order;
import com.website.fpoly.entities.OrderDetail;
import com.website.fpoly.repository.OrderDetailRepository;
import com.website.fpoly.service.OrderDetailService;

@Transactional
@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;

	public OrderDetail getOrderDetail(Long id) {
		return this.orderDetailRepository.getOne(id);
	}

	public List<OrderDetail> getAll() {
		return this.orderDetailRepository.findAll();
	}

	public OrderDetail update(OrderDetail orderDetail) {
		return this.orderDetailRepository.save(orderDetail);

	}

	public void delete(Long id) {
		OrderDetail orderDetail = this.orderDetailRepository.getOne(id);
		orderDetailRepository.delete(orderDetail);
	}

	public void delete(OrderDetail orderDetail) {
		this.orderDetailRepository.delete(orderDetail);
	}


}

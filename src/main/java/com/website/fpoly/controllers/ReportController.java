package com.website.fpoly.controllers;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


import com.website.fpoly.model.MyItem;

import com.website.fpoly.service.ReportService;
import com.website.fpoly.service.impl.OrderServiceImpl;
import com.website.fpoly.service.impl.ReportServiceImp;

@Controller
@RequestMapping(value = "/admin/report")
public class ReportController {

	@Autowired
	private ReportServiceImp reportService;
	
	@Autowired
	private OrderServiceImpl orderService;

	@RequestMapping(value = "/", method = RequestMethod.GET, headers = "Accept=application/json")
	public ModelAndView getStatistical(ModelAndView model, ModelMap mm, HttpSession session) {
		model.setViewName("report-reports");
		Date date = new Date();
		List<MyItem> listItem = reportService.reportReceipt(date, 10);
		
		long total = orderService.sumRevenue();
		System.out.println(listItem.toString());
		mm.addAttribute("listReceipt", listItem);
		mm.addAttribute("total", total);
		return model;
	}
}

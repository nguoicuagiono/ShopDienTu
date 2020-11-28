package com.website.fpoly.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.website.fpoly.model.MyItem;
import com.website.fpoly.repository.OrderRepository;
import com.website.fpoly.repository.ReportReponsitory;
import com.website.fpoly.service.ReportService;

@Service
public class ReportServiceImp implements ReportService {
	@Autowired
	private ReportReponsitory reportReponsitory;

	@Override
	public List<MyItem> reportReceipt(Date date, int limit) {
		return reportReponsitory.reportReceipt(date, limit);
	}

}

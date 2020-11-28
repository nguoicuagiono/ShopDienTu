package com.website.fpoly.service;

import java.util.Date;
import java.util.List;

import com.website.fpoly.model.MyItem;

public interface ReportService {
	public List<MyItem> reportReceipt(Date date, int limit);
}

package com.website.fpoly.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.website.fpoly.entities.OrderDetail;
import com.website.fpoly.entities.Product;

public interface ProductService {

	public Product getProduct(Long id);

	public List<Product> getAll();



	public String add(Product product);

	public String update(Product product);

	public void delete(Product product);

	public void delete(Long id);

	public List<Product> getFindProduct(String productName);

	public Page<Product> getAllWithPagination(Integer pageNo, Integer pageSize, String sortBy);
	
	



	public Page<Product> getAllWithPaginationManufacturer(Integer pageNo, Integer pageSize, String sortBy, Long filter);
}

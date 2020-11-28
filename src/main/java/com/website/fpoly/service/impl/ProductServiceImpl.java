package com.website.fpoly.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.fpoly.entities.Product;
import com.website.fpoly.repository.ProductPagingAndSortingRepository;
import com.website.fpoly.repository.ProductRepository;
import com.website.fpoly.service.ProductService;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private ProductPagingAndSortingRepository productPagingAndSortingRepository;

	public Product getProduct(Long id) {
		Product product = productRepository.getOne(id);
		return product;
	}

	public List<Product> getAll() {
		return this.productRepository.findAll();

	}


	public String add(Product product) {
		String errorMessage = "";
		if (product.getProductName().isEmpty()) {
			errorMessage = "Vui lòng nhập tên sản phẩm!";

			return errorMessage;
		}
		if (product.getDiscount() == null) {
			errorMessage = "Vui lòng nhập phầm trăm giảm giá!";

			return errorMessage;
		}
		if (product.getDiscount() < 0) {
			errorMessage = "Vui lòng nhập phầm trăm giảm giá không được âm!";

			return errorMessage;
		}
		if (product.getOldPrice() == null) {
			errorMessage = "Vui lòng nhập giá cũ!";

			return errorMessage;
		}
		if (product.getOldPrice() < 0) {
			errorMessage = "Giá cũ không được nhỏ hơn 0!";

			return errorMessage;
		}
		if (product.getProductNumber() == null) {
			errorMessage = "Vui lòng nhập số lượng!";

			return errorMessage;
		}
		if (product.getProductNumber() < 0) {
			errorMessage = "Vui lòng nhập số lượng không được nhỏ hơn 0!";

			return errorMessage;
		}
		if (product.getYearManufactured() == null) {
			errorMessage = "Vui lòng nhập năm sản xuất!";

			return errorMessage;
		}

		if (product.getProductImages() == null || product.getProductImages().isEmpty()) {
			errorMessage = "Vui lòng chọn hình ảnh!";

			return errorMessage;
		}
		if (product.getDescription().isEmpty()) {
			errorMessage = "Vui lòng nhập mô tả!";

			return errorMessage;
		}


		product.setCreated(new Date());
		this.productRepository.save(product);

		return null;
	}

	public String update(Product product) {
		String errorMessage = "";
		if (product.getProductName().isEmpty()) {
			errorMessage = "Vui lòng nhập tên sản phẩm!";

			return errorMessage;
		}
		if (product.getDiscount() == null) {
			errorMessage = "Vui lòng nhập phầm trăm giảm giá!";

			return errorMessage;
		}
		if (product.getDiscount() < 0) {
			errorMessage = "Vui lòng nhập phầm trăm giảm giá không được âm!";

			return errorMessage;
		}
		if (product.getOldPrice() == null) {
			errorMessage = "Vui lòng nhập giá cũ!";

			return errorMessage;
		}
		if (product.getOldPrice() < 0) {
			errorMessage = "Giá cũ không được nhỏ hơn 0!";

			return errorMessage;
		}
		if (product.getProductNumber() == null) {
			errorMessage = "Vui lòng nhập số lượng!";

			return errorMessage;
		}
		if (product.getProductNumber() < 0) {
			errorMessage = "Vui lòng nhập số lượng không được nhỏ hơn 0!";

			return errorMessage;
		}

		if (product.getProductImages() == null || product.getProductImages().isEmpty()) {
			errorMessage = "Vui lòng chọn hình ảnh!";

			return errorMessage;
		}
		if (product.getDescription().isEmpty()) {
			errorMessage = "Vui lòng nhập mô tả!";

			return errorMessage;
		}
		if (product.getYearManufactured() == null) {
			errorMessage = "Vui lòng nhập năm sản xuất!";

			return errorMessage;
		}


		product.setCreated(new Date());
		this.productRepository.save(product);

		return null;
	}

	public void delete(Product product) {
		productRepository.delete(product);
	}

	public void delete(Long id) {
		Product product = productRepository.getOne(id);
		productRepository.delete(product);
	}

	public List<Product> getFindProduct(String productName) {
		return productRepository.getFindProduct(productName);
	}

	public List<Product> getAllByProduct(Pageable pageable) {
		return productRepository.getAllByProduct(pageable);
	}



	@Override
	public Page<Product> getAllWithPagination(Integer pageNo, Integer pageSize, String sortBy) {
		Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));
		return this.productPagingAndSortingRepository.findAll(paging);
	}




	public Page<Product> getAllWithPaginationManufacturer(Integer pageNo, Integer pageSize, String sortBy, Long filter) {
		Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));
		return this.productPagingAndSortingRepository.findAllWithFilterManufacturer(filter, paging);
	}

}

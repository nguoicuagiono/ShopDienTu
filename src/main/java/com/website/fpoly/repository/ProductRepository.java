package com.website.fpoly.repository;


import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.website.fpoly.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {


	@Query("select sp from Product sp")
	List<Product> getAll();

	@Query("select p from Product p where p.productName like %:productName%")
	List<Product> getFindProduct(@Param("productName") String productName);

	@Query("select sp from Product sp")
	List<Product> getAllByProduct(Pageable pageable);
	

	
////	Top 5 sản phẩm bán chạy nhất từ ngày A đến ngày B
//	@Query("select top 5 sum(o.totalQuanity) as total, o, o.product, o.order from OrderDetail o"
//			+ " join o.product join o.order where o.order.orderDate > :firstDay and o.order.orderDate < :lasttDay group "
//			+ "by o.id order by total ASC")
//	List<Product> bestSellingProductWithMonthAndWeek(@Param("firstDay") Date firstDay, @Param("lasttDay") Date lastDay);

}

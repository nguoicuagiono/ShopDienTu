package com.website.fpoly.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.website.fpoly.entities.Customer;

@Repository
public interface CustomerPagingAndSortingRepository extends PagingAndSortingRepository<Customer, Long> {

}

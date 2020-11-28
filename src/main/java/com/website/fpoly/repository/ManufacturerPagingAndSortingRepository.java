package com.website.fpoly.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.website.fpoly.entities.Manufacturer;

public interface ManufacturerPagingAndSortingRepository extends PagingAndSortingRepository<Manufacturer, Long> {

}

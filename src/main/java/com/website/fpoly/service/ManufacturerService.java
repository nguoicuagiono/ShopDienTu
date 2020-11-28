package com.website.fpoly.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.website.fpoly.entities.Manufacturer;

public interface ManufacturerService {

	public Manufacturer getManufacturer(Long id);

	public List<Manufacturer> getAll();

	public String add(Manufacturer manufacturer);

	public String update(Manufacturer manufacturer);

	public void delete(Manufacturer manufacturer);

	public void delete(Long id);


	public List<Manufacturer> getFindManufacturer(String manufacturerName);

	public Page<Manufacturer> getAllWithPagination(Integer pageNo, Integer pageSize, String sortBy);
}

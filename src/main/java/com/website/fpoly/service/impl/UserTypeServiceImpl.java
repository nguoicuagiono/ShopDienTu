package com.website.fpoly.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.website.fpoly.entities.UserType;
import com.website.fpoly.repository.UserTypeRepository;
import com.website.fpoly.service.UserTypeService;

@Transactional
@Service
public class UserTypeServiceImpl implements UserTypeService {

	@Autowired
	private UserTypeRepository userTypeReposity;

	@Override
	public List<UserType> getAll() {
		return this.userTypeReposity.findAll();
	}

}
package com.website.fpoly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.website.fpoly.entities.UserType;

@Repository
public interface UserTypeRepository extends JpaRepository<UserType, Long>{

}
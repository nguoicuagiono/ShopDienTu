package com.website.fpoly.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.website.fpoly.entities.User;

@Repository
public interface UserPagingAndSortingRepository extends PagingAndSortingRepository<User, Long> {

}

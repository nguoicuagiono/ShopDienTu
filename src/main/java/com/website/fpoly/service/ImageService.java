package com.website.fpoly.service;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
	public String uploadFile(String uploadRootPath, MultipartFile file);
}

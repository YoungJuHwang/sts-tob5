package com.tob.mapper;

import org.springframework.stereotype.Repository;

import com.tob.admin.AdminVO;

@Repository
public interface AdminMapper {

	public int update(AdminVO admin);

	public int insert(AdminVO admin);

} 

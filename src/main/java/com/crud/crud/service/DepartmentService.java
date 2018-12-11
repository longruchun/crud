package com.crud.crud.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crud.crud.bean.Department;
import com.crud.crud.dao.DepartmentMapper;
@Service
public class DepartmentService {
	
	private DepartmentMapper   departmentMapper;  

	
	
	public List<Department> getDepts() {
		// TODO Auto-generated method stub
		List<Department>  list=departmentMapper.selectByExample(null);
		return list;
	}

	
	
	
	
}

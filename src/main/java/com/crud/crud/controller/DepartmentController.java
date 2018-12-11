package com.crud.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.crud.bean.Department;
import com.crud.crud.bean.Msg;
import com.crud.crud.service.DepartmentService;

/**
 * 处理和部门有关的请求
 * 
 * @author Administrator
 *
 */

@Controller
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
      
	/**
	 * 
	 * @return
	 */
	@RequestMapping("/depts")
	@ResponseBody
	
	
	public Msg getDepats() {
		//查出的所有部门信息
		List<Department> list = departmentService.getDepts();

		return Msg.sussess().add("depts", list);

	}

}

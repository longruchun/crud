package com.lrc.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lrc.crud.bean.Employee;
import com.lrc.crud.service.EmployeeService;
/**
 * 
 * 处理员工增删改查的请求
 * @author asus1
 *
 */
@Controller
public class EmployeeController {

	@Autowired
	  EmployeeService  empolyeeService;
	/**
	 * 查询员工数据
	 * @return
	 */
	
	@RequestMapping("/emps")
	public  String getEmps(@RequestParam(value="pn",defaultValue="1")Integer pn , Model model  ) {//PN(page number)
		
		//这不是几个分页查询
		//引入pageHelper
		//在查询之前调用pageHelper,传入页码以及每页大小
		PageHelper.startPage(pn,5);
		//StartPage后面跟这个查询的每一个分页查询
		List<Employee> emps=empolyeeService.getAll();
		//使用pageinfor查询包装结果,只需要pageinfo交给页面就行了
		//封装了详细的分页信息,包括我们查出来的数据,传入显示的页数
		PageInfo page = new PageInfo(emps,5);
		model.addAttribute("pageInfo",page);
		return "list";
	}
	
	
	
}

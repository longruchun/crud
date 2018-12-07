package com.crud.crud.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lrc.crud.dao.DepartmentMapper;


/**
 * 测试dao层的工作
 * @author asus1
 *推荐使用spring的单元测试自动注入我们需要的组建
 *1.导入springTest的模块:
 *2,@ContextConfiguration指定spring配置文件的位置
 *3.直接Autowire要使用的组建即可
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class MapperTest {
	@Autowired
	DepartmentMapper departmentMapper;
	@Test
    public void  testCRUD() {
    /**
     * 测试DepartmentMapper
     */
    	/*//1,创建springIOC的容器
		  ApplicationContext ioc=new ClassPathXmlApplicationContext("applicationContext.xml");
		//2,从容器中获取mapper
		  ioc.getBean(DepartmentMapper.class);*/
		
		System.out.println(departmentMapper);
		
    	
    }
	
	
	
	
	
	
}

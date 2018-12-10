package com.crud.crud.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.crud.crud.bean.Employee;
import com.crud.crud.bean.EmployeeExample;

public interface EmployeeMapper {
    long countByExample(EmployeeExample example);

    int deleteByExample(EmployeeExample example);

    int deleteByPrimaryKey(Integer empId);

    int insert(Employee record);

    int insertSelective(Employee record);

    List<Employee> selectByExample(EmployeeExample example);

    Employee selectByPrimaryKey(Integer empId);
    
    //靠外键关联
    List<Employee> selectByExamplewithDept(EmployeeExample example);
          //带组建和关联了的部门信息的方法
    Employee selectByPrimaryKeywithDept(Integer empId);
    
//***************************************************************************

    int updateByExampleSelective(@Param("record") Employee record, @Param("example") EmployeeExample example);

    int updateByExample(@Param("record") Employee record, @Param("example") EmployeeExample example);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
}
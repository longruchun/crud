package com.crud.crud.dao;

import com.crud.crud.bean.Employee;
import com.crud.crud.bean.EmployeeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EmployeeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    long countByExample(EmployeeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int deleteByExample(EmployeeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int deleteByPrimaryKey(Integer empId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int insert(Employee record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int insertSelective(Employee record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    List<Employee> selectByExample(EmployeeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    Employee selectByPrimaryKey(Integer empId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int updateByExampleSelective(@Param("record") Employee record, @Param("example") EmployeeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int updateByExample(@Param("record") Employee record, @Param("example") EmployeeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int updateByPrimaryKeySelective(Employee record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_emp
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    int updateByPrimaryKey(Employee record);
}
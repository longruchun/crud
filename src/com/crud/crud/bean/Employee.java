package com.crud.crud.bean;

public class Employee {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_emp.emp_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    private Integer empId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_emp.emp_name
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    private String empName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_emp.gender
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    private String gender;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_emp.email
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_emp.d_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    private Integer dId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_emp.emp_id
     *
     * @return the value of tbl_emp.emp_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public Integer getEmpId() {
        return empId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_emp.emp_id
     *
     * @param empId the value for tbl_emp.emp_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_emp.emp_name
     *
     * @return the value of tbl_emp.emp_name
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public String getEmpName() {
        return empName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_emp.emp_name
     *
     * @param empName the value for tbl_emp.emp_name
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public void setEmpName(String empName) {
        this.empName = empName == null ? null : empName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_emp.gender
     *
     * @return the value of tbl_emp.gender
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public String getGender() {
        return gender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_emp.gender
     *
     * @param gender the value for tbl_emp.gender
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_emp.email
     *
     * @return the value of tbl_emp.email
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_emp.email
     *
     * @param email the value for tbl_emp.email
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_emp.d_id
     *
     * @return the value of tbl_emp.d_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public Integer getdId() {
        return dId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_emp.d_id
     *
     * @param dId the value for tbl_emp.d_id
     *
     * @mbg.generated Thu Dec 06 10:36:35 CST 2018
     */
    public void setdId(Integer dId) {
        this.dId = dId;
    }
}
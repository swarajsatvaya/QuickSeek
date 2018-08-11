/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Employeedetails;

/**
 *
 * @author OdexLaptop
 */
public interface EmployeeDetailsDao extends BaseDao<Employeedetails>{
    
    Employeedetails checkMobileNo(String mobileNo);
    
    Employeedetails checkEmail(String email);
    
}

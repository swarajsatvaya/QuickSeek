/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Employeeposition;

/**
 *
 * @author pc2
 */
public interface EmployeepositionDao extends BaseDao<Employeeposition>{
    
    Employeeposition checkPositionName(String name);
    
    Employeeposition getDetailsByUserId(String userId);
    
}

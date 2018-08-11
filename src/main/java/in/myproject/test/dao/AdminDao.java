/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Admin;

/**
 *
 * @author PC6
 */
public interface AdminDao extends BaseDao<Admin> {

    Admin loginCheck(String username, String password);
    
    Admin checkUser(String username, String email);
   
            

}

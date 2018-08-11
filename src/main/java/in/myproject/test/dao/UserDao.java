/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.User;

/**
 *
 * @author pc2
 */
public interface UserDao extends BaseDao<User>{
    
    User checkEmail(String email);
    
    User checkPhone(String phone);
    
    User loginCheck(String email,String password);
    
    
    
    
    
}

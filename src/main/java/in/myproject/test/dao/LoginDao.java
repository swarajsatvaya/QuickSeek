/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Login;

/**
 *
 * @author PC6
 */
public interface LoginDao extends BaseDao<Login>{
    
     Login loginCheck(String email,String password);
    
}

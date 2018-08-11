/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Cart;
import java.util.List;

/**
 *
 * @author OdexLaptop
 */
public interface CartDao extends BaseDao<Cart>{
    
    Cart checkCart(int userId,int upgradeId);
    
    List<Cart> getAllCartDetails(int userId);
    
}

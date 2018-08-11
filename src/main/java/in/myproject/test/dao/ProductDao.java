/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Product;

/**
 *
 * @author pc2
 */
public interface ProductDao extends BaseDao<Product>{
    
    Product checkProductName(String name);
    
}

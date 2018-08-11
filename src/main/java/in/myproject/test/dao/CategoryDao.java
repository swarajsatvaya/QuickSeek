/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Category;

/**
 *
 * @author pc2
 */
public interface CategoryDao extends BaseDao<Category>{
    
    Category checkCategory(String name);
    
    
}

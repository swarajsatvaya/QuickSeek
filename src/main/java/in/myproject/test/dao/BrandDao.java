/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Brand;

/**
 *
 * @author pc2
 */
public interface BrandDao extends BaseDao<Brand>{
    
    Brand checkBrandname(String name);
    
}

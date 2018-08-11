/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Businessdetails;

/**
 *
 * @author pc2
 */
public interface BusinessDao extends BaseDao<Businessdetails>{
    
    Businessdetails getDetails(int id);
    
}

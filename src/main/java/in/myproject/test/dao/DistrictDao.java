/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.District;
import in.myproject.test.domain.State;
import java.util.List;

/**
 *
 * @author PC6
 */
public interface DistrictDao extends BaseDao<District>{
    
    District checkDistrictName(String districtname,State state);
    
    public List<District> fetchDistrictByState(long state);
    
}

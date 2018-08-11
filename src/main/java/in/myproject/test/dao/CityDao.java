/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.City;
import in.myproject.test.domain.State;
import java.util.List;

/**
 *
 * @author PC6
 */
public interface CityDao extends BaseDao<City>{
    
    City checkCityName(String cityname,State state);
    
    List<City> fetchCityByState(long id);
    
}

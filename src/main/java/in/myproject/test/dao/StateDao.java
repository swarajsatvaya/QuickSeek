/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.State;
import java.util.List;

/**
 *
 * @author PC6
 */
public interface StateDao extends BaseDao<State>{
    
    State checkState(String statename);
    
    List<State> loadall();
    
}

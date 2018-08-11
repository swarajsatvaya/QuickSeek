/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Ownerform;
import java.util.List;

/**
 *
 * @author pc2
 */
public interface OwnerDao extends BaseDao<Ownerform>{
    
    Ownerform checkPhone(String phone);
    
    List<Ownerform> getAllDetailsByCityName(String name);
    
//    Ownerform getownerDetailsById(long id);
    
    List<Ownerform> loadAllByStatus();
    
    Ownerform loadByIdAndStatus(long id);
    
    
}

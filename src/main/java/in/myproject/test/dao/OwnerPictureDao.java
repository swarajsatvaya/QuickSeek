/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Ownerpicture;

/**
 *
 * @author OdexLaptop
 */
public interface OwnerPictureDao extends BaseDao<Ownerpicture>{
    
    Ownerpicture getDetails(long id);
    
}

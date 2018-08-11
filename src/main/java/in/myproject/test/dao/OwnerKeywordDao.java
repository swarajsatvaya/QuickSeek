/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Businessdetails;
import in.myproject.test.domain.Ownerkeyword;
import java.util.List;

/**
 *
 * @author OdexLaptop
 */
public interface OwnerKeywordDao extends BaseDao<Ownerkeyword>{
    
    List<Ownerkeyword> getDetails(String name);
    
    Ownerkeyword getDetailsByIdAndType(int id,String name);
    
    Ownerkeyword getDetails(int id);
    
}

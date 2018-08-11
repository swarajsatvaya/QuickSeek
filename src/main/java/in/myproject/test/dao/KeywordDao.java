/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Keyword;
import java.util.List;

/**
 *
 * @author pc2
 */
public interface KeywordDao extends BaseDao<Keyword>{
    
    Keyword checkKeywordName(String keywordname);
    
    List<Keyword> getKeyWord(long catagoryId,long subcatagoryId);
    
}

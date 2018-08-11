/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.MiddleAdDao;
import in.myproject.test.domain.Middleadvt;

/**
 *
 * @author pc2
 */
public class MiddleAdDaoJpa extends BaseDaoJpa<Middleadvt> implements MiddleAdDao{
    
    public MiddleAdDaoJpa() {
        super(Middleadvt.class, "Middleadvt");
    }
    
}

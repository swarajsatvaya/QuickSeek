/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.SideAdDao;
import in.myproject.test.domain.Sideadvt;

/**
 *
 * @author pc2
 */
public class SideAdDaoJpa extends BaseDaoJpa<Sideadvt> implements SideAdDao{
    
    public SideAdDaoJpa() {
        super(Sideadvt.class, "Sideadvt");
    }
    
}

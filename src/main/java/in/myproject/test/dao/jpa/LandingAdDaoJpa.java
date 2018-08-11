/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.LandingAdDao;
import in.myproject.test.domain.Landingpageadvt;

/**
 *
 * @author pc2
 */
public class LandingAdDaoJpa extends BaseDaoJpa<Landingpageadvt> implements LandingAdDao{
    
    public LandingAdDaoJpa() {
        super(Landingpageadvt.class, "Landingpageadvt");
    }
    
}

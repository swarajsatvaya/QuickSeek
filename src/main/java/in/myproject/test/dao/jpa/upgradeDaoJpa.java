/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.UpgradeDao;
import in.myproject.test.domain.Upgrade;

/**
 *
 * @author OdexLaptop
 */
public class upgradeDaoJpa extends BaseDaoJpa<Upgrade> implements UpgradeDao{
    
    public upgradeDaoJpa() {
        super(Upgrade.class, "Upgrade");
    }
    
}

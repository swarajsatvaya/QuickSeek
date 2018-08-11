/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.PackagetableDao;
import in.myproject.test.domain.Packagetable;

/**
 *
 * @author PC6
 */
public class PackagetableDaoJpa extends BaseDaoJpa<Packagetable> implements PackagetableDao{
    
    public PackagetableDaoJpa() {
        super(Packagetable.class, "Packagetable");
    }
    
}

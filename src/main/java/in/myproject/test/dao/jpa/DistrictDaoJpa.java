/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.DistrictDao;
import in.myproject.test.domain.District;
import in.myproject.test.domain.State;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author PC6
 */
public class DistrictDaoJpa extends BaseDaoJpa<District> implements DistrictDao {

    public DistrictDaoJpa() {
        super(District.class, "District");
    }

    @Override
    public District checkDistrictName(String districtname, State state) {
        try {
            Query query = getEntityManager().createQuery("SELECT d FROM District AS d WHERE d.name=:districtname AND d.state=:state");
            query.setParameter("districtname", districtname);
            query.setParameter("state", state);
            return (District) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }

    @Override
    public List<District> fetchDistrictByState(long state) {
        Query query = getEntityManager().createQuery("SELECT d FROM District AS d WHERE d.state.id=:state");
        query.setParameter("state", state);
        return query.getResultList();

    }
}

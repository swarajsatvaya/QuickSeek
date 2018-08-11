/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.StateDao;
import in.myproject.test.domain.State;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author PC6
 */
public class StateDaoJpa extends BaseDaoJpa<State> implements StateDao {

    public StateDaoJpa() {
        super(State.class, "State");
    }

    @Override
    public State checkState(String statename) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM State AS ul WHERE ul.stateName=:statename");
            query.setParameter("statename", statename);
            return (State) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public List<State> loadall() {
        Query query = getEntityManager().createQuery("SELECT ul FROM State AS ul ORDER BY ul.stateName asc");
        return query.getResultList();
    }

}

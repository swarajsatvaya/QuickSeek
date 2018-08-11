/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.CityDao;
import in.myproject.test.domain.City;
import in.myproject.test.domain.State;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author PC6
 */
public class CityDaoJpa extends BaseDaoJpa<City> implements CityDao {

    public CityDaoJpa() {
        super(City.class, "City");
    }

    @Override
    public City checkCityName(String cityname, State state) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM City AS ul WHERE ul.cityName=:cityname AND ul.state=:state");
            query.setParameter("cityname", cityname);
            query.setParameter("state", state);
            return (City) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public List<City> fetchCityByState(long id) {
        Query query = getEntityManager().createQuery("SELECT ul FROM City AS ul WHERE ul.state.id=:id ORDER BY ul.cityName asc");
        query.setParameter("id", id);
        return query.getResultList();
    }

}

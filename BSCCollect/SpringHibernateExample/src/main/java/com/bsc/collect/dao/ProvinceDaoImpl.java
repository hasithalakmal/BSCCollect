package com.bsc.collect.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.bsc.collect.model.Province;

@Repository("provinceDao")
public class ProvinceDaoImpl extends AbstractDao<Integer, Province> implements ProvinceDao {

    public Province findById(int id) {
        return getByKey(id);
    }

    public void saveProvince(Province province) {
        persist(province);
    }

    @SuppressWarnings("unchecked")
    public List<Province> findAllProvince() {
        Criteria criteria = createEntityCriteria();
        return (List<Province>) criteria.list();
    }

    public Province findProvinceByName(String province_name) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("province_name", province_name));
        return (Province) criteria.uniqueResult();
    }

    public void deleteProvince(String province_name) {
        Query query = getSession().createSQLQuery("delete from Province where province_name = :province_name");
        query.setString("province_name", province_name);
        query.executeUpdate();
    }

    public List<Province> MyTest() {
        System.out.println("Its working baby....");
        Query query = getSession().createSQLQuery(
                "CALL select_all_province()")
                .addEntity(Province.class);

        List result = query.list();
        System.out.println(result.toString());
        return result;
    }

}

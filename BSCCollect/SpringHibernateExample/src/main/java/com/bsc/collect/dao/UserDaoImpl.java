/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha
 */
@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

    public User findById(String user_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveUser(User user) {
        persist(user);
    }

    public void deleteUserBySsn(String user_id) {
        Query query = getSession().createSQLQuery("delete from user where user_id = :user_id");
        query.setString("user_id", user_id);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
    }

    public User findUserByuser_id(String user_id) {
        User u = (null);
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("user_id", user_id));
        Object c = criteria.uniqueResult();
        //System.out.println(c.toString());
        if(c ==(null)){
        // System.out.println("adoooooo");
        }else{
            u = (User) c;
            
        //// System.out.println("adooo 222");
      //  System.out.println(u.toString());
            
        }
       // System.out.println("mmmmmmmmmmmmmmm");

        return u;
    }

    public boolean isValidLogin() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

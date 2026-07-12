package com.cognizant.ormlearn.dao;

import com.cognizant.ormlearn.model.Employee;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class HibernateEmployeeDao {

    private final SessionFactory sessionFactory;

    public HibernateEmployeeDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Integer addEmployee(Employee employee) {

        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        Integer employeeId = null;

        try {
            transaction = session.beginTransaction();

            employeeId = (Integer) session.save(employee);

            transaction.commit();

        } catch (HibernateException exception) {

            if (transaction != null) {
                transaction.rollback();
            }

            exception.printStackTrace();

        } finally {
            session.close();
        }

        return employeeId;
    }
}

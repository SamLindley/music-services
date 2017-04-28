package com.psandchill.repository;

import com.psandchill.models.Song;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class SongRepositoryDB implements SongRepository {
    @Override
    public List<Song> getAllSongs(){

        Session session = HibernateUtilities.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Song");
        List<Song> activities = query.list();
        session.getTransaction().commit();
        session.close();
        return activities;
    }
}

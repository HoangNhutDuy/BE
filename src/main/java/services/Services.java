package services;

import DAO.DAO;

public abstract class Services {
    protected static DAO dao = DAO.getInstance();
}

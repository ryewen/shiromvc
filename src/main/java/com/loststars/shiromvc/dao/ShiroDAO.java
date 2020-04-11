package com.loststars.shiromvc.dao;

import java.util.List;

import com.loststars.shiromvc.model.User;

public interface ShiroDAO {

    public User getUser(String name);
    
    public List<String> listRoles(String name);
    
    public List<String> listPermissions(String name);
    
    public List<String> listAllPermissions();
    
    public int addUser(User user);
}

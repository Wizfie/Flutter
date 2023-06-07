package com.flutter_api.flutter_api.services;

import java.util.List;

import com.flutter_api.flutter_api.model.Users;

public interface IUsersService {
    public Users insertUsers(Users users);

    public List<Users> getAllUsers();

    public Users updateUsers(int id, Users users);

    public Users deleteUsers(int id);

    // public Users UpdateUsersById(int id);
}

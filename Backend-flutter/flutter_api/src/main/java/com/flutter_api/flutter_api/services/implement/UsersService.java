package com.flutter_api.flutter_api.services.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flutter_api.flutter_api.model.Users;
import com.flutter_api.flutter_api.repository.IUsersRepository;
import com.flutter_api.flutter_api.services.IUsersService;

@Service
public class UsersService implements IUsersService {

    @Autowired(required = true)
    IUsersRepository usersRepository;

    @Override
    public Users insertUsers(Users users) {

        return usersRepository.insertUsers(users);
    }

    @Override
    public List<Users> getAllUsers() {
        return usersRepository.getAllUsers();
    }

    @Override
    public Users updateUsers(int id, Users users) {
        return usersRepository.updateUsers(id, users);
    }

    @Override
    public Users deleteUsers(int id) {
        return usersRepository.deleteUsers(id);
    }

    // @Override
    // public Users UpdateUsersById(int id) {
    // return null;
    // }

}

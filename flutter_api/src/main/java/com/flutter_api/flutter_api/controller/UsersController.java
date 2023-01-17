package com.flutter_api.flutter_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flutter_api.flutter_api.model.Users;
import com.flutter_api.flutter_api.services.IUsersService;

@RestController
@CrossOrigin(origins = "http://localhost:8080")
@RequestMapping("/api/users")
public class UsersController {

    @Autowired
    IUsersService usersService;

    @PostMapping("/insert")
    public Users insertUsers(@RequestBody Users users) {
        return usersService.insertUsers(users);
    }

    @GetMapping("/getAll")
    public List<Users> getAll() {
        return usersService.getAllUsers();
    }
}

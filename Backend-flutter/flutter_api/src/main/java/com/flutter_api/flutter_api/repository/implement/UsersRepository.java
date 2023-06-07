package com.flutter_api.flutter_api.repository.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.flutter_api.flutter_api.model.Users;
import com.flutter_api.flutter_api.repository.IUsersRepository;

@Repository
public class UsersRepository implements IUsersRepository {

    @Autowired(required = true)
    JdbcTemplate jdbcTemplate;

    @Override
    public Users insertUsers(Users users) {
        String query = "INSERT INTO tb_users(nama,email,usia) VALUES(?,?,?)";

        jdbcTemplate.update(query, new Object[] {
                users.getNama(), users.getEmail(), users.getUsia()
        });
        return users;
    }

    @Override
    public List<Users> getAllUsers() {
        String query = "SELECT * FROM tb_users";
        return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Users.class));
    }

    @Override
    public Users updateUsers(int id, Users users) {
        String query = "UPDATE tb_users SET nama = ? , email = ? , usia = ? WHERE id = ?";
        jdbcTemplate.update(query, new Object[] {
                users.getNama(), users.getEmail(), users.getUsia(), id
        });
        return users;
    }

    @Override
    public Users deleteUsers(int id) {
        String query = "SELECT * FROM tb_users WHERE id = ?";
        var result = jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<>(Users.class), id);
        query = "DELETE FROM tb_users WHERE id = ?";
        jdbcTemplate.update(query, id);
        return result;
    }

    // @Override
    // public Users UpdateUsersById(int id) {
    // return null;
    // }

}
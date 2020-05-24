package web.dao;

import web.model.User;

import java.util.List;

public interface UserDao {
    User getUser(Long id);
    void add(User user);
    List<User> getAllUsers();

    void update(User user);
    void delete(Long id);
}

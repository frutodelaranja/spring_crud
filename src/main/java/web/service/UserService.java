package web.service;

import web.model.User;

import java.util.List;

public interface UserService {
    User getUser(Long id);
    void add(User user);
    public List<User> getAllUsers();
    void update(User user);
    void delete(Long id);
}

package ru.max.repositories;

import ru.max.models.User;

import java.util.List;

/**
 * @author Serov Maxim
 */
public interface UsersRepository {
    List<User> findAll();

    void save(User user);
}

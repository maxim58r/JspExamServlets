package ru.max.repositories;

import ru.max.models.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Serov Maxim
 */
public class UsersRepositoryMemoryImpl implements UsersRepository {
    private List<User> users;

    public UsersRepositoryMemoryImpl() {
        this.users = new ArrayList<>();
        User user = new User("Maxim", "qwerty456", LocalDate.parse("1982-12-25"));
        User user1 = new User("Vladislav", "asdf123", LocalDate.parse("2004-12-22"));
        User user2 = new User("Vasilina", "zxcvb789", LocalDate.parse("2013-05-31"));

        users.add(user);
        users.add(user1);
        users.add(user2);

    }

    public List<User> findAll() {
        return this.users;
    }

    @Override
    public void save(User user) {
        users.add(user);
    }
}

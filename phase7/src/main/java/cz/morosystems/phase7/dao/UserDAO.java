package cz.morosystems.phase7.dao;

import java.util.List;

import cz.morosystems.phase7.entity.AccountEntity;
import cz.morosystems.phase7.entity.BookEntity;
import cz.morosystems.phase7.entity.UserEntity;

public interface UserDAO {
	public UserEntity getUser(Integer id);
	public UserEntity getUserWithLinks(Integer id);
    public List<UserEntity> getAllUsers();
    public Integer getNUsers();
    public void addUser(UserEntity user);
    public void editUser(UserEntity user);
    public void deleteUser(Integer userId);
}
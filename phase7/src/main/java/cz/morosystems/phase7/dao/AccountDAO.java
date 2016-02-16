package cz.morosystems.phase7.dao;

import java.util.List;

import cz.morosystems.phase7.entity.AccountEntity;
import cz.morosystems.phase7.entity.UserEntity;

public interface AccountDAO {
	public AccountEntity getAccount(Integer accountId);
    public void addAccount(AccountEntity account);
    public void editAccount(AccountEntity account);
    public void deleteAccount(Integer accountId);
}
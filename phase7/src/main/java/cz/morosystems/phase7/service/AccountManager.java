package cz.morosystems.phase7.service;

import java.util.List;

import cz.morosystems.phase7.entity.AccountEntity;
import cz.morosystems.phase7.entity.UserEntity;

public interface AccountManager {
	public AccountEntity getAccount(Integer accountId);
    public void addAccount(AccountEntity account);
    public void editAccount(AccountEntity account);
    public void deleteAccount(Integer accountId);
}

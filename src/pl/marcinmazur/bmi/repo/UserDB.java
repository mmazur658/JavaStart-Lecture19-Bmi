package pl.marcinmazur.bmi.repo;

import java.util.ArrayList;
import java.util.List;

import pl.marcinmazur.bmi.entity.User;

public class UserDB {

	private static final UserDB instance = new UserDB();

	private UserDB() {

	}

	public static UserDB getInstance() {
		return instance;
	}

	private List<User> users = new ArrayList<>();

	public boolean addUser(String nickName, String password) {

		if (password == null || password.length() < 6)
			return false;

		if (nickName == null || nickName.length() < 3)
			return false;

		User user = new User(nickName, password);
		users.add(user);

		return true;
	}

	public boolean isNickNameUnique(String nickName) {

		for (User user : users) {
			if (user.getNickName().equals(nickName))
				return false;
		}

		return true;
	}

	public boolean isLoginCorrect(String nickName, String password) {

		User user = getUserByNickName(nickName);

		if (user == null)
			return false;

		if (user.getPassword().equals(password))
			return true;
		else
			return false;

	}

	private User getUserByNickName(String nickName) {

		for (User user : users) {
			if (user.getNickName().equals(nickName))
				return user;
		}

		return null;
	}

}

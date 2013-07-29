package ledweb.model.mapper;

import java.util.List;

import ledweb.model.User;

public interface IUserOperation {
	public User selectUserByID(int id);
	public List<User> selectUsers(String userName);
	public int addUser(User user);
	public int updateUser(User user);
	public int deleteUser(int id);

}

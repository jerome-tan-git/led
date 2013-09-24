package ledweb.model.mapper;

import java.util.List;

import ledweb.model.User;

public interface IUserOperation {
	public User selectUserByID(String id);
	public List<User> selectUsers();
	public int addUser(User user);
	public int updateUser(User user);
	public int deleteUser(int id);

}

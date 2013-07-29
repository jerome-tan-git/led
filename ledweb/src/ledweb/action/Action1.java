package ledweb.action;

import org.apache.ibatis.session.SqlSession;

import ledweb.ModelSessionFactory;
import ledweb.model.User;

import com.opensymphony.xwork2.ActionSupport;

public class Action1 extends ActionSupport {
	private String username = "111111";
	private User user = null;
	public User getUser() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		return  (User) session.selectOne("ledweb.model.UserMapper.selectUserByID", 1);
	}

	public String getUsername() {
		return username;
	}

	@Override
	public String execute() {	
		if(getUsername().equals("1"))
		{
			this.username = "a";
		}
		return SUCCESS;
	}

	public void setUsername(String username) {

		this.username = username;
	}
}

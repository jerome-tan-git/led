package ledweb.action;

import org.apache.ibatis.session.SqlSession;

import ledweb.ModelSessionFactory;
import ledweb.model.Teacher;
import ledweb.model.User;
import ledweb.model.mapper.TeacherMapper;

import com.opensymphony.xwork2.ActionSupport;

public class Action1 extends ActionSupport {
	private String username = "111111";
	private User user = null;
	private String specID;
	public String getSpecID() {
		return specID;
	}

	public void setSpecID(String specID) {
		this.specID = specID;
	}

	public Teacher getTeacher() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		TeacherMapper teacherMapper = session.getMapper(TeacherMapper.class);  
        Teacher teacher = teacherMapper.one2many(1);
		return teacher;
	}

	private Teacher teacher = null;
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
		System.out.println("Spec ID: " + this.specID);
		return SUCCESS;
	}

	public void setUsername(String username) {

		this.username = username;
	}
}

package ledweb;

import java.io.Reader;
import java.util.List;

import ledweb.model.Student;
import ledweb.model.Teacher;
import ledweb.model.User;
import ledweb.model.mapper.TeacherMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Test {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSession() {
		return sqlSessionFactory;
	}

	public static void main(String[] args) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
//			User user = (User) session.selectOne(
//					"ledweb.model.UserMapper.selectUserByID", 1);
//			System.out.println(user.getUserAddress());
//			System.out.println(user.getUserName());
            TeacherMapper teacherMapper = session  
                    .getMapper(TeacherMapper.class);  
            Teacher teacher = teacherMapper.one2many(1);  
            List<Student> students = teacher.getStudents();  
            System.out.println(teacher.getId());  
            System.out.println(teacher.getName());  
            for (Student student : students) {  
                System.out.println(student.getId());  
                System.out.println(student.getName());  
            }  
		} finally {
			session.close();
		}
	}
}

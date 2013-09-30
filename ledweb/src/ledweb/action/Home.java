package ledweb.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.HomeImage;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IHomeImageOperation;

import com.opensymphony.xwork2.ActionSupport;

public class Home extends ActionSupport{
	private List<HomeImage> homeImages;
	private List<Category> categories;
	private List<Category> realCategories;
	private Logger log = Logger.getLogger(Home.class);
	private boolean showArrow;
	private List<Category> allCategories;
		
		public List<Category> getAllCategories() {
			return allCategories;
		}
		public void setAllCategories(List<Category> allCategories) {
			this.allCategories = allCategories;
		}
	public List<Category> getRealCategories() {
		return realCategories;
	}

	public void setRealCategories(List<Category> realCategories) {
		this.realCategories = realCategories;
	}

	public boolean isShowArrow() {
		return showArrow;
	}

	public void setShowArrow(boolean showArrow) {
		this.showArrow = showArrow;
	}

	public List<HomeImage> getHomeImages() {
		return homeImages;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public void setHomeImages(List<HomeImage> homeImages) {
		this.homeImages = homeImages;
	}

	@Override
	public String execute() throws Exception {
		this.allCategories = Util.getAllCategories();
		SqlSession session = null;
		try
		{
			session = ModelSessionFactory.getSession().openSession();
			IHomeImageOperation IHIO = session.getMapper(IHomeImageOperation.class);
			this.setHomeImages(IHIO.selectImageURLByType("home"));

			ICategoryOperation ICO = session.getMapper(ICategoryOperation.class);
			List<Category> tmpCategory = ICO.selectAllCategories();

			this.categories = new ArrayList<Category>();
			this.realCategories = tmpCategory;
			for (int i=0;i<tmpCategory.size();i++)
			{
				if (i==0 && (tmpCategory.size() <= 4))
				{
					this.categories.add(tmpCategory.get(0));
					this.categories.add(tmpCategory.get(0));
				}
				else 
				{
					this.categories.add(tmpCategory.get(i));
				}
			}
			if (tmpCategory.size()<=4)
			{
				this.showArrow = false;
			}
			else 
			{
				this.showArrow= true;
			}
		}
		catch(Exception e)
		{
			log.warn(e.getMessage());
		}finally {
			if (session != null) {
				session.close();
			}
		}
		// TODO Auto-generated method stub
		return SUCCESS;
	}
 
}
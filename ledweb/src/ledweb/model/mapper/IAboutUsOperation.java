package ledweb.model.mapper;

import ledweb.model.AboutUs;

public interface IAboutUsOperation {

	public AboutUs selectAboutUs();
	public int addAboutUs(AboutUs aboutUs);
	public int updateAboutUs(AboutUs aboutUs);
	public int deleteAboutUs(int id);
	
}

package ledweb.model.mapper;

import java.util.List;

import ledweb.model.HomeImage;

public interface IHomeImageOperation {
	public List<HomeImage> selectAllImageURL();
	public int addHomeImage(HomeImage images);
	public int realDeleteImage();
}

package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import ledweb.ImageFileFilter;
import ledweb.ModelSessionFactory;
import ledweb.model.HomeImage;
import ledweb.model.mapper.IHomeImageOperation;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.opensymphony.xwork2.ActionSupport;

public class FileManagement extends ActionSupport {
	private File newImage;
	private String newImageContentType;
	private String newImageFileName;
	private String upload;
	private String savePath;
	private File[] imageFiles;
	private String module = "file management";
	private String desc;
	private String[] mobileImageUrl;
	private String[] homeImageUrl;
	private List<String> pcImages=new ArrayList<String>();
	private List<String> mobileImages=new ArrayList<String>();
	

	public List<String> getPcImages() {
		return pcImages;
	}

	public void setPcImages(List<String> pcImages) {
		this.pcImages = pcImages;
	}

	public List<String> getMobileImages() {
		return mobileImages;
	}

	public void setMobileImages(List<String> mobileImages) {
		this.mobileImages = mobileImages;
	}

	public String[] getHomeImageUrl() {
		return homeImageUrl;
	}

	public void setHomeImageUrl(String[] homeImageUrl) {
		this.homeImageUrl = homeImageUrl;
	}

	public String[] getMobileImageUrl() {
		return mobileImageUrl;
	}

	public void setMobileImageUrl(String[] mobileImageUrl) {
		this.mobileImageUrl = mobileImageUrl;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	private String indexImage;

	public String getIndexImage() {
		return indexImage;
	}

	public void setIndexImage(String indexImage) {
		this.indexImage = indexImage;
	}

	public String getModule() {
		return module;
	}

	public String getContextPath() {
		return contextPath;
	}

	public void setContextPath(String contextPath) {
		this.contextPath = contextPath;
	}

	private String contextPath;

	public File[] getImageFiles() {
		return imageFiles;
	}

	public void setImageFiles(File[] imageFiles) {
		this.imageFiles = imageFiles;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getRealSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	private Logger log = Logger.getLogger(FileManagement.class);

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public File getNewImage() {
		return newImage;
	}

	public void setNewImage(File newImage) {
		this.newImage = newImage;
	}

	public String getNewImageContentType() {
		return newImageContentType;
	}

	public void setNewImageContentType(String newImageContentType) {
		this.newImageContentType = newImageContentType;
	}

	public String getNewImageFileName() {
		return newImageFileName;
	}

	public void setNewImageFileName(String newImageFileName) {
		this.newImageFileName = newImageFileName;
	}

	public String execute() {
		// if ()
		SqlSession session = ModelSessionFactory.getSession().openSession();
		if (this.getUpload() != null && this.getUpload().trim().equals("1")) {
			String newFileName = "";
			if (this.getNewImage() != null) {
				newFileName = System.currentTimeMillis() + "_"
						+ this.getNewImageFileName();
				File savefile = new File(new File(this.getRealSavePath()),
						newFileName);
				if (!savefile.getParentFile().exists()) {
					savefile.getParentFile().mkdirs();
				}
				try {
					FileUtils.copyFile(this.getNewImage(), savefile);
				} catch (IOException e) {
					log.error(e.getMessage());
				}
			}
		} else if (this.indexImage != null
				&& this.indexImage.trim().equals("1")) {
			
			try {
				IHomeImageOperation IHIO = session
						.getMapper(IHomeImageOperation.class);
				IHIO.realDeleteImage();
				for (String homeImage : this.getHomeImageUrl()) {
					HomeImage hi = new HomeImage();
					hi.setImageURL(homeImage);
					hi.setType("home");
					IHIO.addHomeImage(hi);
				}
				for (String homeImage : this.getMobileImageUrl()) {
					HomeImage hi = new HomeImage();
					hi.setImageURL(homeImage);
					hi.setType("mobile");
					IHIO.addHomeImage(hi);
				}
				session.commit();
			} catch (Exception e) {
				log.warn(e.getMessage());
			}

			
		}
		File folder = new File(this.getRealSavePath());
		if (folder.exists() && folder.isDirectory()) {
			File[] files = folder.listFiles(new ImageFileFilter());
			for (File f : files) {
				this.setImageFiles(files);

			}
		}
		IHomeImageOperation IHIO = session.getMapper(IHomeImageOperation.class);
		List<HomeImage> pci = (IHIO.selectImageURLByType("home"));
		List<HomeImage> moi = (IHIO.selectImageURLByType("mobile"));
		for (HomeImage str:pci)
		{
			this.getPcImages().add(str.getImageURL().replaceAll(this.getSavePath()+"/", ""));
//			str.setImageURL(str.getImageURL().replaceAll(this.getSavePath()+"/", ""));
//			log.warn(str.getImageURL());
		}
		
		
		for (HomeImage str:moi)
		{
			this.getMobileImages().add(str.getImageURL().replaceAll(this.getSavePath()+"/", ""));
//			str.setImageURL(str.getImageURL().replaceAll(this.getSavePath()+"/", ""));
//			log.warn(str.getImageURL());
		}
		log.warn(this.getPcImages());
		// log.warn(this.homeImageUrl.length);
		
		
		
		return SUCCESS;
	}
}

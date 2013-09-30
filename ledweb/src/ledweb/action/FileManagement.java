package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	private String[] targetURL;
	private String[] imageFileName;
	private List<String> pcImages = new ArrayList<String>();
	private List<String> mobileImages = new ArrayList<String>();
	private Map<String, String> targetURLMap = new HashMap<String, String>();
	private Map<String, String> showTargetURLMap = new HashMap<String, String>();
	private String saveFilePath;

	public String getSaveFilePath() {
		return new File(this.getRealSavePath()).getAbsolutePath();
	}

	public void setSaveFilePath(String saveFilePath) {
		this.saveFilePath = saveFilePath;
	}

	public Map<String, String> getShowTargetURLMap() {
		return showTargetURLMap;
	}

	public void setShowTargetURLMap(Map<String, String> showTargetURLMap) {
		this.showTargetURLMap = showTargetURLMap;
	}

	public String[] getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String[] imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String[] getTargetURL() {
		return targetURL;
	}

	public void setTargetURL(String[] targetURL) {
		this.targetURL = targetURL;
	}

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
			SqlSession session = null;
			try {

				session = ModelSessionFactory.getSession().openSession();
				IHomeImageOperation IHIO = session
						.getMapper(IHomeImageOperation.class);
				IHIO.realDeleteImage();
				String[] mobileImages = ServletActionContext.getRequest()
						.getParameterValues("mobileImageUrl");

				String[] homeImages = ServletActionContext.getRequest()
						.getParameterValues("homeImageUrl");
				// String[] targetURLs = ServletActionContext.getRequest()
				// .getParameterValues("targetUrl");
				// if(this.targetURL!=null)
				// {
				// log.warn("targetURL length:" + targetURL.length);
				// log.warn("imageFileName length:" + imageFileName.length);
				// }
				int count = 0;
				for (String imageFile : imageFileName) {
					this.targetURLMap.put(imageFile, this.targetURL[count]);
					count++;
				}

				// log.warn(this.targetURLMap);

				if (homeImages != null) {
					for (String homeImage : homeImages) {
						HomeImage hi = new HomeImage();
						hi.setImageURL(homeImage);
						String fileName = homeImage;
						if (fileName.indexOf("/") != -1) {
							fileName = fileName.substring(fileName
									.lastIndexOf("/") + 1);
						}
						String targetURL = this.targetURLMap.get(fileName);
						hi.setType("home");
						if (targetURL == null || targetURL.trim().equals("")) {
							hi.setTargetURL("#");
						} else {
							hi.setTargetURL(targetURL);
						}
						IHIO.addHomeImage(hi);
					}
				}
				if (mobileImageUrl != null) {
					for (String homeImage : mobileImages) {
						HomeImage hi = new HomeImage();
						hi.setImageURL(homeImage);

						String fileName = homeImage;
						if (fileName.indexOf("/") != -1) {
							fileName = fileName.substring(fileName
									.lastIndexOf("/") + 1);
						}
						String targetURL = this.targetURLMap.get(fileName);
						hi.setType("mobile");
						if (targetURL == null || targetURL.trim().equals("")) {
							hi.setTargetURL("#");
						} else {
							hi.setTargetURL(targetURL);
						}

						IHIO.addHomeImage(hi);
					}
				}
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (session != null) {
					session.close();
				}
			}

		}
		File folder = new File(this.getRealSavePath());
		if (folder.exists() && folder.isDirectory()) {
			File[] files = folder.listFiles(new ImageFileFilter());
			for (File f : files) {
				this.setImageFiles(files);

			}
		}
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			IHomeImageOperation IHIO = session
					.getMapper(IHomeImageOperation.class);
			List<HomeImage> pci = (IHIO.selectImageURLByType("home"));
			List<HomeImage> moi = (IHIO.selectImageURLByType("mobile"));

			for (HomeImage str : pci) {
				this.getPcImages().add(
						str.getImageURL().replaceAll(this.getSavePath() + "/",
								""));
				this.getShowTargetURLMap().put(
						str.getImageURL().replaceAll(this.getSavePath() + "/",
								""), str.getTargetURL());

				// str.setImageURL(str.getImageURL().replaceAll(this.getSavePath()+"/",
				// ""));
				// log.warn(str.getImageURL());
			}

			for (HomeImage str : moi) {
				this.getMobileImages().add(
						str.getImageURL().replaceAll(this.getSavePath() + "/",
								""));
				this.getShowTargetURLMap().put(
						str.getImageURL().replaceAll(this.getSavePath() + "/",
								""), str.getTargetURL());
				// str.setImageURL(str.getImageURL().replaceAll(this.getSavePath()+"/",
				// ""));
				// log.warn(str.getImageURL());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		// log.warn(this.getShowTargetURLMap());
		// log.warn(this.getPcImages());
		// log.warn(this.getMobileImages());
		// log.warn(this.homeImageUrl.length);

		return SUCCESS;
	}
}
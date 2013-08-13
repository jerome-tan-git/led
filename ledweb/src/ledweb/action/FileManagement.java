package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import ledweb.ImageFileFilter;

import org.apache.commons.io.FileUtils;
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
//		if ()
		if(this.getUpload()!=null && this.getUpload().trim().equals("1"))
		{
			String newFileName="";
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
					log.warn(savefile);
					log.warn(this.getSavePath() + "/" + newFileName);
				} catch (IOException e) {
					log.error(e.getMessage());
				}
			}
		}
		File folder = new File(this.getRealSavePath());
		if (folder.exists() && folder.isDirectory())
		{
			File[] files = folder.listFiles(new ImageFileFilter());
			for (File f: files)
			{
				this.setImageFiles(files);
				log.warn(f.getName()); 
			}
		}
		return SUCCESS;
	}
}

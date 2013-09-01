package ledweb;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageDecoder;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 * Servlet implementation class ImageServlet
 */
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String GIF = "image/gif;charset=ISO-8859-1";// 设定输出的类型
	private static final String JPG = "image/jpeg;charset=ISO-8859-1";
	private static final String PNG = "image/jpeg;charset=ISO-8859-1";

	public void init() throws ServletException {
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String spec = request.getParameter("spec");// 输出图片的类型的标志

		String imagePath = "/images/login-bg_0.png";// 图片相对web应用的位置
		if (request.getSession().getAttribute("image") == null
				|| request.getSession().getAttribute("image").toString().trim()
						.equals("")) {
			File imageFolder = new File(getServletContext().getRealPath(
					"/images"));
			File[] listFiles = null;
			List<File> fileArray = new ArrayList<File>();
			if (imageFolder.isDirectory()) {
				listFiles = imageFolder.listFiles();
			}
			if (listFiles != null) {
				for (File x : listFiles) {
					if (x.getName().startsWith("login-bg_")) {
						fileArray.add(x);
						// System.out.println(x.exists());
					}

				}
				Random r = new Random(10);

				Collections.shuffle(fileArray);
				imagePath = "/images/" + fileArray.get(0).getName();
				request.getSession().putValue("image", imagePath);
			}

		} else {
			imagePath = request.getSession().getValue("image").toString();
		}
		OutputStream output = response.getOutputStream();// 得到输出流
		if (imagePath.toLowerCase().endsWith(".jpg"))// 使用编码处理文件流的情况：
		{
			response.setContentType(JPG);// 设定输出的类型
			// 得到图片的真实路径
			imagePath = getServletContext().getRealPath(imagePath);
			// 得到图片的文件流
			InputStream imageIn = new FileInputStream(new File(imagePath));
			// 得到输入的编码器，将文件流进行jpg格式编码
			JPEGImageDecoder decoder = JPEGCodec.createJPEGDecoder(imageIn);
			// 得到编码后的图片对象
			BufferedImage image = decoder.decodeAsBufferedImage();
			// 得到输出的编码器
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
			encoder.encode(image);// 对图片进行输出编码
			imageIn.close();// 关闭文件流
		} else if (imagePath.toLowerCase().endsWith(".gif"))// 不使用编码处理文件流的情况：
		{
			response.setContentType(GIF);
			ServletContext context = getServletContext();// 得到背景对象
			InputStream imageIn = context.getResourceAsStream(imagePath);// 文件流
			BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
			BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
			byte data[] = new byte[4096];// 缓冲字节数
			int size = 0;
			size = bis.read(data);
			while (size != -1) {
				bos.write(data, 0, size);
				size = bis.read(data);
			}
			bis.close();
			bos.flush();// 清空输出缓冲流
			bos.close();
		} else if (imagePath.toLowerCase().endsWith(".png"))// 不使用编码处理文件流的情况：
		{
			response.setContentType(PNG);
			ServletContext context = getServletContext();// 得到背景对象
			InputStream imageIn = context.getResourceAsStream(imagePath);// 文件流
			BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
			BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
			byte data[] = new byte[4096];// 缓冲字节数
			int size = 0;
			size = bis.read(data);
			while (size != -1) {
				bos.write(data, 0, size);
				size = bis.read(data);
			}
			bis.close();
			bos.flush();// 清空输出缓冲流
			bos.close();
		}
		output.close();

	}

}

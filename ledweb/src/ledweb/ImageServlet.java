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

	private static final String GIF = "image/gif;charset=ISO-8859-1";// �趨���������
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

		String spec = request.getParameter("spec");// ���ͼƬ�����͵ı�־

		String imagePath = "/images/login-bg_0.png";// ͼƬ���webӦ�õ�λ��
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
		OutputStream output = response.getOutputStream();// �õ������
		if (imagePath.toLowerCase().endsWith(".jpg"))// ʹ�ñ��봦���ļ����������
		{
			response.setContentType(JPG);// �趨���������
			// �õ�ͼƬ����ʵ·��
			imagePath = getServletContext().getRealPath(imagePath);
			// �õ�ͼƬ���ļ���
			InputStream imageIn = new FileInputStream(new File(imagePath));
			// �õ�����ı����������ļ�������jpg��ʽ����
			JPEGImageDecoder decoder = JPEGCodec.createJPEGDecoder(imageIn);
			// �õ�������ͼƬ����
			BufferedImage image = decoder.decodeAsBufferedImage();
			// �õ�����ı�����
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
			encoder.encode(image);// ��ͼƬ�����������
			imageIn.close();// �ر��ļ���
		} else if (imagePath.toLowerCase().endsWith(".gif"))// ��ʹ�ñ��봦���ļ����������
		{
			response.setContentType(GIF);
			ServletContext context = getServletContext();// �õ���������
			InputStream imageIn = context.getResourceAsStream(imagePath);// �ļ���
			BufferedInputStream bis = new BufferedInputStream(imageIn);// ���뻺����
			BufferedOutputStream bos = new BufferedOutputStream(output);// ���������
			byte data[] = new byte[4096];// �����ֽ���
			int size = 0;
			size = bis.read(data);
			while (size != -1) {
				bos.write(data, 0, size);
				size = bis.read(data);
			}
			bis.close();
			bos.flush();// ������������
			bos.close();
		} else if (imagePath.toLowerCase().endsWith(".png"))// ��ʹ�ñ��봦���ļ����������
		{
			response.setContentType(PNG);
			ServletContext context = getServletContext();// �õ���������
			InputStream imageIn = context.getResourceAsStream(imagePath);// �ļ���
			BufferedInputStream bis = new BufferedInputStream(imageIn);// ���뻺����
			BufferedOutputStream bos = new BufferedOutputStream(output);// ���������
			byte data[] = new byte[4096];// �����ֽ���
			int size = 0;
			size = bis.read(data);
			while (size != -1) {
				bos.write(data, 0, size);
				size = bis.read(data);
			}
			bis.close();
			bos.flush();// ������������
			bos.close();
		}
		output.close();

	}

}

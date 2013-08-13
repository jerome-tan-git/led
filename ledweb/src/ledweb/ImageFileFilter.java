package ledweb;

import java.io.File;
import java.io.FileFilter;

public class ImageFileFilter implements FileFilter {

	@Override
	public boolean accept(File arg0) {
		if (arg0.getName().endsWith(".jpg") || arg0.getName().endsWith(".png")
				|| arg0.getName().endsWith(".jpeg")
				|| arg0.getName().endsWith("bmp")
				|| arg0.getName().endsWith("gif"))
			return true;
		else

			return false;
	}

}

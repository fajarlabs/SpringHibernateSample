package com.skckonline.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;
 
/**
 * A Java servlet that handles file upload from client.
 *
 * @author www.codejava.net
 */
public class FileUpload {
    /**
     * Upon receiving file upload submission, parses the request to read
     * upload data and saves the file on disk.
     */
    public static Boolean doUpload(MultipartFile file,String folderName)  {
		String rootPath = System.getenv("UPLOAD_LOCATION");
		Boolean result = false;
	
		if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                File dir = new File(rootPath + File.separator + folderName);
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                
                result = true;
 
            } catch (Exception e) {
                e.printStackTrace();
                result = false;
            }
        } else {
        	result = false;
        }
		
		return result;
    }
}

package com.shopaholic.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtility {
	/* Absolute Path->Representing the Project location */
	private static final String ABS_PATH = "P:\\Project\\Maven\\shopaholic\\shopaholic\\src\\main\\webapp\\assets\\images\\";
	/*
	 * Real Path->Representing the location where Tomcat deploys this particular
	 * application
	 */
	private static String REAL_PATH = "";
	
	/*private static final Logger logger = LoggerFactory.getLogger(FileUploadUtility.class);*/
	public static void uploadFile(HttpServletRequest request, MultipartFile file, String code) {
		
		//Get the Real Path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/images/");
		
		System.out.println(REAL_PATH);
		
		/*Check directories if exists or not*/
		
		if(!new File(ABS_PATH).exists()) {
			/*If not create directories*/
			
			new File(ABS_PATH).mkdirs();
			
		}
		
		if(!new File(REAL_PATH).exists()) {
			/*If not create directories*/
			
			new File(REAL_PATH).mkdirs();
			
		}
		try {
			//Server Upload
			file.transferTo(new File(REAL_PATH +code+ ".jpg"));
			//Project Directory Upload
			file.transferTo(new File(ABS_PATH +code+ ".jpg"));		
		}
		catch(IOException e) {
			
		}
	}

}

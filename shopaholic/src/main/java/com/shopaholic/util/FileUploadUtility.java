package com.shopaholic.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtility {
	/* Absolute Path->Representing the Project location */
	private static final String ABS_PATH = "P:\\Project\\Maven\\shopaholic\\shopaholic\\src\\main\\webapp\\assets\\images\\";
	/*
	 * Real Path->Representing the location where Tomcat deploys this particular
	 * application
	 */
	private static String REAL_PATH = null;

	public static void uploadFile(HttpServletRequest request, MultipartFile file, String code) {

		// Get the Real Server Path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/images/");

		System.out.println(REAL_PATH);

		/* Check directories if exists or not */
		if (!new File(ABS_PATH).exists()) {

			/* If not then create directories */
			new File(ABS_PATH).mkdirs();

		}

		if (!new File(REAL_PATH).exists()) {
			/* If not create directories */

			new File(REAL_PATH).mkdirs();

		}
		try {
			// Server Upload
			file.transferTo(new File(REAL_PATH + code + ".jpg"));
			// Project Directory Upload
			file.transferTo(new File(ABS_PATH + code + ".jpg"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		

	}

	public static void uploadNoImage(HttpServletRequest request, String code) {
		// get the real server path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/images/");

		String imageURL = "http://placehold.it/640X480?text=No Image";
		String destinationServerFile = REAL_PATH + code + ".jpg";
		String destinationProjectFile = REAL_PATH + code + ".jpg";

		try {
			URL url = new URL(imageURL);
			try (InputStream is = url.openStream();
					OutputStream osREAL_PATH = new FileOutputStream(destinationServerFile);
					OutputStream osABS_PATH = new FileOutputStream(destinationProjectFile);) {

				byte[] b = new byte[2048];
				int length;
				while ((length = is.read(b)) != -1) {
					osREAL_PATH.write(b, 0, length);
					osABS_PATH.write(b, 0, length);
				}
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}

}

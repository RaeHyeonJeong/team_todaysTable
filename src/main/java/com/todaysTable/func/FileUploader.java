package com.todaysTable.func;

import java.io.File;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component
public class FileUploader {

	public void multiFileUploader(List<MultipartFile> fileList, MultipartHttpServletRequest request, String folderName) {
		fileList = request.getFiles("file");

		String path = "C:\\TeamProject\\Team_todaysTable\\src\\main\\webapp\\resources\\img\\";
		folderName = folderName + "\\";
		
		for(MultipartFile mFile : fileList)
		{
			String originFileName = mFile.getOriginalFilename();
			long fileSize = mFile.getSize();

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String safeFile = path + folderName + originFileName;
			
			try {
				mFile.transferTo(new File(safeFile));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}

package com.todaysTable.func;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component
public class FileUploader {

	private static List<String> filePathList;

	public List<String> getUploadFilePath() {
		if (filePathList == null) {
			return null;
		} else {
			return filePathList;
		}
	}

	private String setUploadFileName(String originFileName, String path, String folderName, List<String> list) {
		UUID uuid = UUID.randomUUID();
		String resultName = path + folderName + uuid.toString() + "_" + originFileName;
		list.add(resultName);
		return resultName;
	}

	public void multiFileUploader(List<MultipartFile> fileList, MultipartHttpServletRequest request, String folderName) {
		FileUploader.filePathList = new ArrayList<String>();
		
		fileList = request.getFiles("file");
		
		String path = "C:\\TeamProject\\Team_todaysTable\\src\\main\\webapp\\resources\\img\\";
		folderName = folderName + "\\";

		for (MultipartFile mFile : fileList) {
			String originFileName = mFile.getOriginalFilename();
			long fileSize = mFile.getSize();

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String safeFile = setUploadFileName(originFileName, path, folderName, FileUploader.filePathList);
			
			try {
				mFile.transferTo(new File(safeFile));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}

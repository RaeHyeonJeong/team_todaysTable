package com.todaysTable.func;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class AjaxFileUploader {

	// 파일명 중복 처리 메서드
	private String setUploadFileName(String originFileName, String path, String folderName) {
		UUID uuid = UUID.randomUUID();
		String resultName = path + folderName + uuid.toString() + "_" + originFileName;

		return resultName;
	}

	// 파일 업로드 처리
	public void uploadFile(MultipartFile file, String folderName) throws Exception {

		// 이미지 파일일 경우
		String path = "C:\\TeamProject\\Team_todaysTable\\src\\main\\webapp\\resources\\img\\";
		folderName = folderName + "\\";
		
		
		// 파일명 중복 처리
		String resultFileName = setUploadFileName(file.getOriginalFilename(), path, folderName);

		File target = new File(resultFileName);
		System.out.println("파일 저장 직전 : " + resultFileName  );
		try {
			// 서버에 파일 저장
			file.transferTo(target);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/*
	 * public static void deleteFlie(String fileName, HttpServletRequest request,
	 * String folderName) {
	 * 
	 * String path =
	 * "C:\\TeamProject\\Team_todaysTable\\src\\main\\webapp\\resources\\img\\";
	 * folderName = folderName + "\\";
	 * 
	 * String originalImg = fileName.substring(0,12) + fileName.substring(14); new
	 * File(path+ folderName + originalImg.replace("\\",
	 * File.separatorChar)).delete(); }
	 */

}

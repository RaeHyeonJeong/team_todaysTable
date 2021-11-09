package com.todaysTable.func;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class AjaxFileUploader {

	// 파일명 임시저장 ArrayList
	public static ArrayList<String> filePathList = null;
	
	public ArrayList<String> getListInstance() {
		if (filePathList == null) {
			filePathList = new ArrayList<>();
		} 
		return filePathList;
	}

	// 파일명 중복 처리 메서드
	private String setUploadFileName(String originFileName, String path, String folderName, ArrayList<String> list) {
		UUID uuid = UUID.randomUUID();
		String resultName = path + folderName + uuid.toString() + "_" + originFileName;

		list.add(resultName);
		return resultName;
	}

	// 파일 업로드 처리
	public void uploadFile(MultipartFile file, String folderName, ArrayList<String> list) throws Exception {
		
		// 이미지 파일일 경우
		String path = "C:\\TeamProject\\Team_todaysTable\\src\\main\\webapp\\resources\\img\\";
		folderName = folderName + "\\";

		// 파일명 중복 처리
		String resultFileName = setUploadFileName(file.getOriginalFilename(), path, folderName, list);

		File target = new File(resultFileName);
		System.out.println("저장 파일: " + resultFileName);
		try {
			// 서버에 파일 저장
			file.transferTo(target);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteFlieAll(ArrayList<String> list) {

		for (String s : list) {
			new File(s).delete();
			System.out.println("삭제 파일 : " + s);
		}
		getListInstance().clear();
	}

}

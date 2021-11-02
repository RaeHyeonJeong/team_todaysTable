package com.todaysTable.controller;

import java.io.FileOutputStream;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.todaysTable.dao.SignupMemberDao;
import com.todaysTable.service.SignUpService;
import com.todaysTable.vo.MemberVO;

@Controller
public class SignUpController {

	@Autowired
	private JavaMailSender mailSender;// 메일

	@Autowired
	private SignUpService service;

	@RequestMapping(value = "signup.do")
	public String joinView() {
		return "WEB-INF/views/signup";
	}

	@RequestMapping(value = "agreement.do")
	public String agreementView() {
		return "WEB-INF/views/agreement";
	}

	// 회원가입
	@PostMapping(value = "signupsubmit.do")
	public String joinSubmit(MemberVO vo, @RequestParam(value = "file", required = false) MultipartFile file)
			throws Exception {
		
		// 생일 yy/mm/dd로 수정
		String birthdate = vo.getBirthdate();
		birthdate = birthdate.replace('-', '/');
		birthdate = birthdate.substring(2, birthdate.length());
		vo.setBirthdate(birthdate);
		
		
		// 파일업로드
		String location = "C:\\Users\\조유주\\git\\team_todaysTable\\src\\main\\webapp\\resources\\upload\\";
		FileOutputStream fos = null;
		System.out.println(file);
		
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				vo.setProfile_image_path(location.concat(fileName));//location + fileName
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
				}
			}
		}

		// 회원가입 정보 넣어줌
		service.memberJoinProcess(vo);
		System.out.println(vo);

		return "WEB-INF/views/signupcomplet";
	}

	// 이메일 인증
	@ResponseBody
	@RequestMapping(value = "emailcheck.do", method = RequestMethod.GET)
	public String mailCheck(String email) throws Exception {

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		System.out.println(email);
		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		System.out.println("인증번호:" + checkNum);
		/* 이메일 보내기 */
		String setFrom = "duddbs1631@gmail.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "'오늘의 식탁'을 방문해주셔서 감사합니다^^" + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		String num = Integer.toString(checkNum);
		
		return num;
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "idCheck.do")
	public int idCheckCtr(String id) {
		System.out.println(id);
		int result = service.IdCheck(id);
		System.out.println(result);

		return result;
	}

	// 닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value = "nickCheck.do")
	public int nickCheckCtr(String nickname) {
		System.out.println(nickname);
		int Nresult = service.NickCheck(nickname);
		System.out.println(Nresult);

		return Nresult;

	}

}
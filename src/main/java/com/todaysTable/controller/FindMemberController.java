package com.todaysTable.controller;

import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todaysTable.service.FindMemberService;

@Controller
public class FindMemberController {

	@Autowired
	private JavaMailSender mailSender;// 메일
	@Autowired
	private FindMemberService service;

	// 아이디 찾기
	@ResponseBody
	@RequestMapping(value = "findID.do")
	public String findId(String name, String tel) {
		HashMap<String, Object> map = new HashMap<>();

		map.put("name", name);
		map.put("tel", tel);
		System.out.println(map);
		String id = service.findId(map);
		System.out.println(id);

		return id;

	}

	// 비밀번호 찾기
	@ResponseBody
	@RequestMapping(value = "findPWDcheck.do")
	public String findId(String email) {
		System.out.println(email);
		String pw = service.findPwd(email);
		return pw;

	}

	// 비밀번호 찾기 인증 메일
	@ResponseBody
	@RequestMapping(value = "searchPWD.do", method = RequestMethod.GET)
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
		String title = "'오늘의 식탁' 비밀번호 찾기 인증 이메일 입니다:)";
		String content = "'오늘의 식탁'을 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
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

}

package com.spring.springTiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {

	@RequestMapping(value = "/message/{msgFlag}", method = RequestMethod.GET)
	public String getMessage(Model model, @PathVariable String msgFlag,
			@RequestParam(name="mid", defaultValue = "", required = false) String mid
		) {
		
		if(msgFlag.equals("memberLoginOk")) {
			model.addAttribute("message", mid + "회원님 로그인 되었습니다.");
			model.addAttribute("url", "/main/memberMain");
		}
		else if(msgFlag.equals("memberLoginNo")) {
			model.addAttribute("message", mid + "로그인 실패");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("memberLogout")) {
			model.addAttribute("message", mid + "회원님 로그아웃 되었습니다.");
			model.addAttribute("url", "/");
		}

		
		return "include/message";
	}
	
}

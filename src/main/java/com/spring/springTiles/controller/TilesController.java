package com.spring.springTiles.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.springTiles.common.SecurityUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/tiles")
public class TilesController {
	
	@RequestMapping(value = "/guestList", method = RequestMethod.GET)
	public String guestListGet() {
		log.info("TilesController의 guestList 입니다.");
		return "guest/guestList";
	}

	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String boardListGet() {
		log.info("TilesController의 boardList 입니다.");
		return "board/boardList";
	}
	
	@RequestMapping(value = "/pdsList", method = RequestMethod.GET)
	public String pdsListGet() {
		log.info("TilesController의 pdsList 입니다.");
		return "pds/pdsList";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPageGet() {
		log.info("TilesController의 myPage 입니다.");
		return "main/memberMain";
	}
	
	@RequestMapping(value = "/memberLogout", method = RequestMethod.GET)
	public String memberLogoutGet(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		session.invalidate();
		
		return "redirect:/message/memberLogout?mid="+mid;
	}
	
	@RequestMapping(value = "/passwordTest", method = RequestMethod.GET)
	public String passwordTestGet() {
		return "study/passwordTest";
	}
	
	@RequestMapping(value = "/passwordTest", method = RequestMethod.POST)
	public String passwordTestPost(Model model, String pwd) {
		String salt = UUID.randomUUID().toString().substring(0, 8);
		pwd = salt + pwd;
		
		SecurityUtil security =  new SecurityUtil();
		String encPwd = security.encryptSHA256(pwd);
		
		model.addAttribute("encPwd", encPwd);
		model.addAttribute("pwd", pwd);
		model.addAttribute("dbPwd", salt + encPwd);
		return "study/passwordTest";
	}
	
	@RequestMapping(value = "/uuidTest", method = RequestMethod.GET)
	public String uuidTestGet() {
		return "study/uuidTest";
	}
	
	@RequestMapping(value = "/uuidTest", method = RequestMethod.POST)
	public String uuidTestPost(Model model ,String uid) {
		UUID uuid = UUID.randomUUID();
		model.addAttribute("uuid", uuid);
		model.addAttribute("uid", uid);
		return "study/uuidTest";
	}
}

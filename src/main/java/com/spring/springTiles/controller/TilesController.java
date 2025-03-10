package com.spring.springTiles.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	
}

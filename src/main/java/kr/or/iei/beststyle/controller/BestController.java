package kr.or.iei.beststyle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.iei.member.model.service.MemberService;

@Controller
public class BestController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value="/beststyle/bestPage.do", method=RequestMethod.GET)
	public String bestPage()
	{
		return "beststyle/bestPage";
	}
	
	@RequestMapping(value="/beststyle/weekBestPage.do", method=RequestMethod.GET)
	public String weekbestPage()
	{
		return "beststyle/weekBestPage";
	}
	
	@RequestMapping(value="/beststyle/bestOfbestPage.do",method=RequestMethod.GET)
	public String bestOfbestPage()
	{
		return "beststyle/bestOfbestPage";
	}
}

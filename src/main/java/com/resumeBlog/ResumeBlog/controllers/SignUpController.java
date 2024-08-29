package com.resumeBlog.ResumeBlog.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.security.cert.CertificateExpiredException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.resumeBlog.ResumeBlog.model.Certifications;
import com.resumeBlog.ResumeBlog.model.FresherResume;
import com.resumeBlog.ResumeBlog.model.GeneralInfo;
import com.resumeBlog.ResumeBlog.model.LoginUser;
import com.resumeBlog.ResumeBlog.model.OthersInformation;
import com.resumeBlog.ResumeBlog.model.RegisterUser;
import com.resumeBlog.ResumeBlog.model.Skills;
import com.resumeBlog.ResumeBlog.model.SkillsandCertification;
import com.resumeBlog.ResumeBlog.service.CredentialService;
import com.resumeBlog.ResumeBlog.service.PatternService;

@Controller
public class SignUpController {

	@Autowired
	PatternService ps;

	@Autowired
	CredentialService credentialService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUp(Model model) {
		model.addAttribute("registeruser", new RegisterUser());
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signedUp(@Valid @ModelAttribute("registeruser") RegisterUser registeruser, BindingResult br,
			Model model,ModelMap map) {
		if (br.hasErrors()) {
			return "signup";
		}
		boolean isUserRegistered=credentialService.isUserRegistered(registeruser.getEmail());
		if(isUserRegistered) {
			map.put("error",true);
			return "signup";
		}
		
		credentialService.addUser(registeruser);
		return "redirect:/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("loginuser", new LoginUser());
		return "login";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "resume";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loggedin(@Valid @ModelAttribute("loginuser") LoginUser loginuser, BindingResult br, ModelMap map,
			Model model, HttpSession session) {
		if (br.hasErrors()) {
			return "login";
		}

		boolean isUserPresent = credentialService.isUserPresent(loginuser);

		if (isUserPresent) {
			FresherResume myResume = credentialService.isResumePresent(loginuser.getEmail());
			if (myResume != null) {
				String UniqueId = ps.generateUniqueId(myResume);
				map.put("uniqueId", UniqueId);
				map.put("data", myResume);
				map.put("editStatus", true);
				return "printresume";
			}
			model.addAttribute("generalInfo", new GeneralInfo());
			session.setAttribute(loginuser.getEmail(), true);
			session.setAttribute("loginuser", loginuser);
			session.setAttribute("fresherresume", new FresherResume());
			return "resumecreation1";
		}
		model.addAttribute("Error", "Invalid Credentials!!!");
		return "login";
	}

	@RequestMapping(value = "/resumeCreationtwo", method = RequestMethod.POST)
	public String resumeCreationtwo(@ModelAttribute("generalInfo") GeneralInfo generalInfo, BindingResult result,
			Model model, ModelMap map, HttpSession session) {
//		System.out.println(generalInfo);
		FresherResume fr = (FresherResume) session.getAttribute("fresherresume");
		if (null == generalInfo) {
			return "error";
		}
		fr.setGeneralInfo(generalInfo);
		session.removeAttribute("fresherresume");
		session.setAttribute("fresherresume", fr);
		SkillsandCertification sc = new SkillsandCertification();

		List<Skills> skills = new ArrayList<Skills>();
		List<Certifications> certifications = new ArrayList<Certifications>();

		Skills s1 = new Skills();
		skills.add(s1);

		Certifications c1 = new Certifications();
		certifications.add(c1);

		sc.setCertifications(certifications);
		sc.setSkills(skills);

		model.addAttribute("skillsandcertifications", sc);
		return "resumecreation2";
	}

	@RequestMapping(value = "/resumeCreationthree", method = RequestMethod.POST)
	public String resumeCreationthree(
			@ModelAttribute("skillsandcertifications") SkillsandCertification skillsandcertifications,
			BindingResult result, Model model, ModelMap map, HttpSession session) {
		FresherResume fresume = (FresherResume) session.getAttribute("fresherresume");
		fresume.setSkillsandCertification(skillsandcertifications);
		session.removeAttribute("fresherresume");
		session.setAttribute("fresherresume", fresume);

		model.addAttribute("oInfo", new OthersInformation());
		return "resumecreation3";
	}

	@RequestMapping(value = "/printresume", method = RequestMethod.POST)
	public String printresume(@ModelAttribute("oInfo") OthersInformation othersInformation, BindingResult result,
			Model model, ModelMap map, HttpSession session) {
		FresherResume fresume = (FresherResume) session.getAttribute("fresherresume");
		fresume.setOthersInformation(othersInformation);
		session.removeAttribute("fresherresume");
		session.setAttribute("fresherresume", fresume);
		System.out.println(fresume);
		LoginUser user = (LoginUser) session.getAttribute("loginuser");
		RegisterUser registeredUser = credentialService.getUserbyemailandpassword(user.getEmail(), user.getPassword());
		registeredUser.setFresherResume(fresume);
		credentialService.updateRegisteredUser(registeredUser);
		RegisterUser registeredUser1 = credentialService.getUserbyemailandpassword(user.getEmail(), user.getPassword());
		FresherResume fr1 = ps.getFresherResume(registeredUser1.getFresherResume().getFid());

		String UniqueId = ps.generateUniqueId(fr1);
		map.put("uniqueId", UniqueId);
		map.put("data", fr1);
		return "printresume";
	}

}

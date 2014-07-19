package edu.asu.easysaas.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.asu.easysaas.model.User;
import edu.asu.easysaas.service.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public ModelAndView loginpage() {
		ModelAndView modelAndView = new ModelAndView("login");
		User user = new User();
		modelAndView.addObject(user);
		return modelAndView;
	}

	@RequestMapping(value="/Home", method = RequestMethod.POST)
	public ModelAndView homepage(@ModelAttribute("user") User user, HttpSession session) {
		if(user.getUsername() == "" || user.getPassword() == "")
		{
			ModelAndView modelAndView = new ModelAndView("login");
			String error = "Please enter all the fields!";
			modelAndView.addObject("error", error);
			modelAndView.addObject(user);
			return modelAndView;
		}

		User currentuser = userService.getUser(user.getUsername());
	
		if(currentuser != null)
		{
			System.out.println(currentuser.getUsername());
			System.out.println(currentuser.getPassword());
			System.out.println(user.getUsername());
			System.out.println(user.getPassword());
			
			if(!user.getUsername().equals(currentuser.getUsername()) || !user.getPassword().equals(currentuser.getPassword()))
			{
				ModelAndView modelAndView = new ModelAndView("login");
				String error = "incorrect credentials!";
				modelAndView.addObject("error", error);
				modelAndView.addObject(user);
				return modelAndView;
			}
			else{
				session.setAttribute("user", currentuser);
				ModelAndView modelAndView = new ModelAndView("home");
				return modelAndView;
			}
		}
		else{
			ModelAndView modelAndView = new ModelAndView("login");
			String error = "incorrect credentials!";
			modelAndView.addObject("error", error);
			modelAndView.addObject(user);
			return modelAndView;
		}

	}

}

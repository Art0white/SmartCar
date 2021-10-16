package com.lmx.web;

import com.lmx.entity.User;
import com.lmx.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
	
	@Autowired
	private IUserService userService;

	@RequestMapping(value="/login")
	public String Login(String userNo,String password,Model model,HttpServletRequest request) {
		User currentUser = userService.login(userNo, password);
		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "../../index.jsp";
		}
		if(currentUser.getPermission()==3) {
			// request.getSession().setAttribute("userNo", userNo);
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(3600);

			session.setAttribute("currentUser", currentUser);
			//model.addAttribute("userNo", userNo);
			return "../../home.jsp";
		}else {
			model.addAttribute("message", "当前用户不是管理员");
			return "../../index.jsp";
		}
	}

	@RequestMapping(value="/quit")
	public String quitSystem(Model model,HttpServletRequest request) {

		request.getSession().invalidate();
		return "../../index.jsp";
	}
}

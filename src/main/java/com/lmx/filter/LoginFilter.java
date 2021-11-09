package com.lmx.filter;

import com.lmx.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * @date 2021-7-6
 * @author lmx yty yxj
 * 开发工具生成的
 * 这是个过滤器 用于验证用户登陆 (查找session)
 * 把图片的路径过滤掉，否则会出现图片无法加载
 * 
 *
 */
public class LoginFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest servletRequest = (HttpServletRequest)request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();
		
		String path = servletRequest.getRequestURI();
		
		System.out.println("当前路径：" + path);
		User currentUser = (User)session.getAttribute("currentUser");
		System.out.println("当前用户："+currentUser);
		if (path.indexOf("index.jsp") > -1 || path.indexOf("login") > -1
				|| path.indexOf(".jpg") > -1 || path.indexOf(".html") > -1
				|| path.indexOf(".png") > -1 || path.indexOf(".css") > -1
				|| path.indexOf(".js") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}

//		if (path.contains("index.jsp") || path.contains("login")
//				|| path.contains(".jpg") || path.contains(".html")
//				|| path.contains(".png") || path.contains(".css")
//				|| path.contains(".js")) {
//			chain.doFilter(servletRequest, servletResponse);
//			return;
//		}
		if(currentUser == null || "".equals(currentUser)) {
			//servletResponse.sendRedirect("${pageContext.request.contextPath}/index.jsp");
			//servletRequest.getRequestDispatcher("/index.jsp").forward(request, response);
			servletResponse.sendRedirect("/SmartCar_war/index.jsp");
		}else {
			chain.doFilter(servletRequest, servletResponse);
		}
		
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

}

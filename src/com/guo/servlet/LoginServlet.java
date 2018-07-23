package com.guo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.guo.dao.impl.UserDaoimp;
import com.guo.entity.User;
import com.guo.util.EncryptUtil;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet.json")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String captcha = request.getParameter("captcha");
		
		String validate = (String) request.getSession().getAttribute("validate");
		
		JSONObject json = new JSONObject();
		if (validate.equalsIgnoreCase(captcha)) {
			User user = new UserDaoimp().Login(username);
			if (user.getUsername() != null) {
				String pwd = EncryptUtil.encryptMD5(password+user.getSalt());
				if (pwd.equals(user.getPassword())) {
					json.put("msg", "登录成功");
					json.put("success", true);
				}else {
					json.put("msg", "密码有误");
					json.put("success", false);
				}
			}else {
				json.put("msg", "账号有误！");
				json.put("success", false);
			}
		}else {
			json.put("msg", "验证码错误");
			json.put("success", false);
		}
		
		response.getWriter().append(json.toString());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

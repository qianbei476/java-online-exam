package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.beans.STATUS;
import com.beans.User;
import com.dao.UserDao;
import com.dao.UserDaoImp;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class operation extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	public static String FAILED = "404";
	private UserDao userDao = new UserDaoImp();
	HttpSession session = ServletActionContext.getRequest().getSession();
	
	public STATUS status = new STATUS();	//初始化状态 
	public String GsonToJsonStr(Object obj){
		Gson gson = new Gson();
		return gson.toJson(obj);
	}     
	
	public void PrintWriterWrite(String Jsonstr) throws IOException{
		PrintWriter pw = response.getWriter();
		pw.write(Jsonstr);
	}
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	
	//login===================================================
	public String UserLogin() throws IOException{	
		status.setType("login");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(username, password);
		status.setUSERNAME(username);
		
		if(userDao.Userlogin(user)){		
			status.setValue("succeed");
			session.setAttribute("USER", user);
			System.out.println("login succss"+session.getAttribute("USER"));//test
		}else {
			status.setValue("failed");
			session.removeAttribute("USER");//销毁session
		}
		//System.out.println("1"+status.toString());
//		request.getSession().setAttribute("curUser", user);
//		ServletActionContext.getContext().getValueStack().push(status);
//		ActionContext.getContext().put(key, value)
		//System.out.println(GsonToJsonStr(status));
		return SUCCESS;
	}
	
	
	//return json
	public String ForgetChange(){		//
		return SUCCESS;
	}
	
	//regist=================================================
	public String UserRegist() throws IOException{		//
		status.setType("regist");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		User user = new User(username,password,email,0);
		try{	
			status.setValue("succeed");
			userDao.addUser(user);
			
		}catch(Exception e){
			status.setValue("failed");
		}
		request.setAttribute("status", status.toString());
		return SUCCESS;
	}
	
	public String ConfirmForget(){	//
		return SUCCESS;
	}
	
	public String SetKeyNumber(){
		return SUCCESS;
	}
	
	public String UserLogout(){
		status = new STATUS();
		this.session.removeAttribute("USER");
		return SUCCESS;
	}
	
	public String UserPractice(){
		status.setType("practice");
		return SUCCESS;
	}


//=========================================================	
	public STATUS getStatus() {
		return status;
	}
	public void setStatus(STATUS status) {
		this.status = status;
	}
	
}

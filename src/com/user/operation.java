package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	public static STATUS status = new STATUS();	//初始化状态 
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
		}else {
			status.setValue("failed");
		}
		//System.out.println("1"+status.toString());
//		request.getSession().setAttribute("curUser", user);
//		ServletActionContext.getContext().getValueStack().push(status);
//		ActionContext.getContext().put(key, value)
		//System.out.println(GsonToJsonStr(status));
		return SUCCESS;
	}
	
	public String UserLoginLink(){
		//System.out.println("2"+status.toString());
		if((status.getType().equals("login")||(status.getType().equals("userinfo")))&&status.getValue().equals("succeed"))
			return SUCCESS;
		else 
			return "LOGINBACK";
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
	
	public String UserInfo(){
		status.setType("userinfo");
		status.setValue("succeed");
		return SUCCESS;
	}
	
	public String UserLogout(){
		status.setUSERNAME(null);
		status.setType("logout");
		status.setValue("succede");
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

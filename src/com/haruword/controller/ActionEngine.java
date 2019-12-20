package com.haruword.controller;

import com.haruword.controller.action.Action;
import com.haruword.controller.action.MemberAddAction;
import com.haruword.controller.action.MemberFindidAction;
import com.haruword.controller.action.MemberFindpwAction;
import com.haruword.controller.action.MemberLoginAction;

public class ActionEngine {

	public ActionEngine() {
		// TODO Auto-generated constructor stub
	}
	
	private static ActionEngine instance = new ActionEngine();
	
	public static ActionEngine getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("command : " + command);
		
		if(command.equals("member_add")) {
			action = new MemberAddAction();
		} else if(command.equals("member_findid")) {
			action = new MemberFindidAction();
		} else if(command.equals("member_findpw")) {
			action = new MemberFindpwAction();
		}else if(command.equals("member_login")) {
			action = new MemberLoginAction();
		}
		
		return action;
	}
	

}
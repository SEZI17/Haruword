package com.haruword.controller;

import com.haruword.controller.action.Action;

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
		}
		
		return action;
	}
	

}

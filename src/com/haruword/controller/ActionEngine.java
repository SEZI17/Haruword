package com.haruword.controller;

import com.haruword.controller.action.Action;
import com.haruword.controller.action.MemberAddAction;
import com.haruword.controller.action.MemberCheckidAction;
import com.haruword.controller.action.MemberChecknicknameAction;
import com.haruword.controller.action.MemberCheckpwAction;
import com.haruword.controller.action.MemberFindidAction;
import com.haruword.controller.action.MemberFindpwAction;
import com.haruword.controller.action.MemberLoginAction;
import com.haruword.controller.action.MemberLoginChkAction;
import com.haruword.controller.action.MemberLogoutAction;
import com.haruword.controller.action.MemberModifyAction;

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
		} else if(command.equals("member_login")) {
			action = new MemberLoginAction();
		} else if(command.equals("member_loginChk")) {
			action = new MemberLoginChkAction();
		} else if(command.equals("member_checkID")) {
			action = new MemberCheckidAction();
		} else if(command.equals("member_checkNN")) {
			action = new MemberChecknicknameAction();
		} else if(command.equals("member_checkPW")) {
			action = new MemberCheckpwAction();
		} else if(command.equals("member_logout")) {
			action = new MemberLogoutAction();
		} else if(command.equals("member_modify")) {
			action = new MemberModifyAction();
		}
		
		return action;
	}
	

}

package com.picnic.controller;

import com.picnic.controller.action.Action;
import com.picnic.controller.action.Board_View_Action;
import com.picnic.controller.action.Kakao_Search_Action;
import com.picnic.controller.action.Modify_Action;
import com.picnic.controller.action.Modify_Write_Action;
import com.picnic.controller.action.Picnic_Action;
import com.picnic.controller.action.Review_Delete_Action;
import com.picnic.controller.action.Review_Write_Action;
import com.picnic.controller.action.Abandonment_Action;
import com.picnic.controller.action.Abandonment_Search_Action;


public class ActionFactory {
	
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if(command.equals("picnic")) {
			action = new Picnic_Action();
		} else if(command.equals("abandonment")) {
			action = new Abandonment_Action();
		} else if(command.equals("abandonment_search")) {
			action = new Abandonment_Search_Action();
		} else if(command.equals("search_kakao")) {
			action = new Kakao_Search_Action();
		} else if(command.equals("board_view_action")) {
			action = new Board_View_Action();
		} else if(command.equals("write")) {
			action = new Review_Write_Action();
		} else if(command.equals("delete")) {
			action = new Review_Delete_Action();
		} else if(command.equals("modify")) {
			action = new Modify_Action();
		} else if(command.equals("modify_write")) {
			action = new Modify_Write_Action();
		}
		
		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}

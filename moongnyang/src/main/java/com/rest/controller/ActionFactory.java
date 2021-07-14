package com.rest.controller;

import com.rest.controller.action.Action;
import com.rest.controller.action.Cafe_List_Action;
import com.rest.controller.action.Cafe_Write_Action;
import com.rest.controller.action.Cafe_Write_ActionForm;


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
		if(command.equals("cafe_list")) {
			action = new Cafe_List_Action();
		} else if(command.equals("cafe_write")) {
			action = new Cafe_Write_Action();
		} else if(command.equals("cafe_write_form")) {
			action = new Cafe_Write_ActionForm();
		} else if(command.equals("upload")) {
			
		}
		
		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}

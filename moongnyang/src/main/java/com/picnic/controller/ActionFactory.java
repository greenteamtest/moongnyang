package com.picnic.controller;

import com.picnic.controller.action.Action;
import com.picnic.controller.action.abandonment_Action;


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
			
		} else if(command.equals("abandonment")) {
			action = new abandonment_Action();
		}
		
		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}

package com.picnic.controller;

import com.picnic.controller.action.Action;
import com.picnic.controller.action.Cafe_Action_Kakao;
import com.picnic.controller.action.Cafe_Action_Naver;
import com.picnic.controller.action.Cafe_View_Action;
import com.picnic.controller.action.Index_Action;
import com.picnic.controller.action.Picnic_Action;
import com.picnic.controller.action.Review_Delete;
import com.picnic.controller.action.Review_Write;
import com.picnic.controller.action.Abandonment_Action;


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
		} else if(command.equals("index")) {
			action = new Index_Action();
		} else if(command.equals("abandonment")) {
			action = new Abandonment_Action();
		} else if(command.equals("cafe_kakao")) {
			action = new Cafe_Action_Kakao();
		} else if(command.equals("cafe_naver")) {
			action = new Cafe_Action_Naver();
		} else if(command.equals("cafe_view_action")) {
			action = new Cafe_View_Action();
		} else if(command.equals("write")) {
			action = new Review_Write();
		} else if(command.equals("delete")) {
			action = new Review_Delete();
		}
		
		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}

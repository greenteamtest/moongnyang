package com.Staff.controller;

import com.Staff.controller.action.Action;
import com.Staff.controller.action.after_requestTimeover_Action;
import com.Staff.controller.action.change_staff_val_Action;
import com.Staff.controller.action.endTimeover_Action;
import com.Staff.controller.action.insert_staff_Action;
import com.Staff.controller.action.requestVaction_Action;
import com.Staff.controller.action.result_timeover_Action;
import com.Staff.controller.action.search_staff_Action;
import com.Staff.controller.action.search_timeover_Action;
import com.Staff.controller.action.search_vacation_Action;
import com.Staff.controller.action.startTimeover_Action;
import com.Staff.controller.action.view_timeover_Action;

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
		System.out.println("ActionFactory : " + command);
		if (command.equals("end_timeover")) {
			action = new endTimeover_Action();
		}
		if (command.equals("after_request_timeover")) {
			action = new after_requestTimeover_Action();
		}
		if (command.equals("start_timeover")) {
			action = new startTimeover_Action();
		}
		if (command.equals("request_vacation")) {
			action = new requestVaction_Action();
		}
		if (command.equals("insert_staff")) {
			action = new insert_staff_Action();
		}
		if (command.equals("change_staff_val")) {
			action = new change_staff_val_Action();
		}
		if (command.equals("search_staff")) {
			action = new search_staff_Action();
		}
		if (command.equals("search_vacation")) {
			action = new search_vacation_Action();
		}
		if (command.equals("search_timeover")) {
			action = new search_timeover_Action();
		}
		if (command.equals("view_timeover")) {
			action = new view_timeover_Action();
		}
		if (command.equals("resultTimeover")) {
			action = new result_timeover_Action();
		}

		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}
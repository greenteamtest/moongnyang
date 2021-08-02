package com.media.controller;

import com.Staff.controller.action.Action;
import com.Staff.controller.action.after_requestTimeover_Action;
import com.Staff.controller.action.endTimeover_Action;
import com.Staff.controller.action.insert_staff_Action;
import com.Staff.controller.action.requestVaction_Action;
import com.Staff.controller.action.startTimeover_Action;

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
		if (command.equals("")) {
			action = new endTimeover_Action();
		}

		else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}
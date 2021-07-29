package com.Staff.controller;

import com.Staff.controller.action.Action;
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
		if (command.equals("start_timeover")) {
			action = new startTimeover_Action();
		}
		return action;
	}
}
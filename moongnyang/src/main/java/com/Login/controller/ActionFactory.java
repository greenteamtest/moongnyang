package com.Login.controller;

import com.Login.controller.action.Action;

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
		if (command.equals("userPage")) {
			action = new userPageAction();
		}
		if (command.equals("managerPage")) {
			action = new managerPageAction();
		}
		if (command.equals("managerPageCus")) {
			action = new customerChangeAction();
		}
		if (command.equals("managerPageQna")) {
			action = new qnaChangeAction();
		}
		if (command.equals("managerPageBusi")) {
			action = new businessChangeAction();
		}
		if (command.equals("businessPage")) {
			action = new businessPageAction();
		}
		return action;
	}
}
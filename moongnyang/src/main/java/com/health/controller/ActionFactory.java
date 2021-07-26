package com.health.controller;

import com.health.controller.action.Action;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) throws InstantiationException, IllegalAccessException {
		Action action = null;

		try {
			Class<?> ActionType = Class.forName("com.health.controller.action.Health_" + command + "_Action");
			action = (Action) ActionType.newInstance();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return action;
	}
}

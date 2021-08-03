package com.media.controller;

import com.media.controller.action.Action;
import com.media.controller.action.clicklike_Action;
import com.media.controller.action.mediamain_Action;
import com.media.controller.action.uploadmedia_Action;

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
		if (command.equals("mediamain")) {
			action = new mediamain_Action();
		}
		if (command.equals("uploadmedia")) {
			action = new uploadmedia_Action();
		}
		if (command.equals("clicklike")) {
			action = new clicklike_Action();
		} else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}
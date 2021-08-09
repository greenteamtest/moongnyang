package com.media.controller;

import com.media.controller.action.Action;
import com.media.controller.action.add_comment_Action;
import com.media.controller.action.check_and_go_Action;
import com.media.controller.action.clicklike_Action;
import com.media.controller.action.mediamain_Action;
import com.media.controller.action.search_media_Action;
import com.media.controller.action.uploadmedia_Action;
import com.media.controller.action.view_media_Action;

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
		if (command.equals("search_media")) {
			action = new search_media_Action();
		}
		if (command.equals("view_media")) {
			action = new view_media_Action();
		}
		if (command.equals("check_and_go")) {
			action = new check_and_go_Action();
		}
		if (command.equals("add_comment")) {
			action = new add_comment_Action();
		}
		if (command.equals("clicklike")) {
			action = new clicklike_Action();
		} else {
			System.out.println("ActionFactroy : action이 선택되지 않았어!!");
		}
		return action;
	}
}
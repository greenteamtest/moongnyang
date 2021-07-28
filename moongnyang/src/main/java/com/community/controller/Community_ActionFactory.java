package com.community.controller;

import com.community.controller.action.*;

public class Community_ActionFactory {
	private static Community_ActionFactory instance = new Community_ActionFactory();

	private Community_ActionFactory() {
		super();
	}

	public static Community_ActionFactory getInstance() {
		return instance;
	}

	// 이 메소드가 Community_BoardServlet의 doGet 메소드에서 호출됨
	public Community_Action getAction(String command) {
		Community_Action action = null;
		System.out.println("Community_ActionFactory :" + command);
		/* 추가된 부분- 지수 */
		if (command.equals("board_list")) {
			action = new Community_BoardList_Action();
		}

		return action;
	}
}

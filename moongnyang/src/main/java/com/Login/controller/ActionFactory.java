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
		if (command.equals("loginpage")) {
			action = new loginpage_Action();
		}
		if (command.equals("login")) {
			action = new login_Action();
		}
		if (command.equals("userPage")) {
			action = new userPageAction();
		}
		if (command.equals("managerPage")) {
			action = new managerPageAction();
		}
		if (command.equals("managerPageCus")) {
			action = new managerPageCustomer();
		}
		if (command.equals("managerPageStaff")) {
			action = new staffChangeAction();
		}
		if (command.equals("managerPageBusi")) {
			action = new managerBusiChangeAction();
		}
		if (command.equals("businessPage")) {
			action = new businessPageAction();
		}
		if (command.equals("businessPageBusi")) {
			action = new busibusinessChangeAction();
		}
		if (command.equals("memberLounge")) {
			action = new memberLoungeAction();
		}
		if (command.equals("secret")) {
			action = new secretAction();
		}
		if (command.equals("businessUpdate")) {
			action = new BusinessUpdateAction();
		}
		if (command.equals("businessReadBoard")) {
			action = new managerPageBusiReadBoardAction();
		}
		if (command.equals("businessUpdateBoard")) {
			action = new managerPageBusiUpdateBoardAction();
		}
		if (command.equals("rejectUpdatemember")) {
			action = new managerPageBusiRejectBoardAction();
		}
		if (command.equals("customerconversation")) {
			action = new userPageconversationUploadAction();
		}
		if (command.equals("customerreadBoard")) {
			action = new managerPageCustomerReadBoardAction();
		}
		if (command.equals("answerCustomer")) {
			action = new managerPageCustomerAnswerAction();
		}
		if (command.equals("answerCheck")) {
			action = new userPageAnswerCheckAction();
		}
		if (command.equals("deleteAnswer")) {
			action = new userPage_Answer_DeleteAction();
		}
		if (command.equals("start_timeover")) {
			action = new start_timeover_action();
		}
		return action;
	}
}
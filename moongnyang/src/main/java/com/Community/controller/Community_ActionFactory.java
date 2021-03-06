package com.Community.controller;

import com.Community.controller.action.Community_Action;
import com.Community.controller.action.Community_BoardDelete_Action;
import com.Community.controller.action.Community_BoardList_Action;
import com.Community.controller.action.Community_BoardUpdateDeleteForm_Action;
import com.Community.controller.action.Community_BoardUpdateForm_Action;
import com.Community.controller.action.Community_BoardUpdateLike_Action;
import com.Community.controller.action.Community_BoardView_Action;
import com.Community.controller.action.Community_BoardWriteForm_Action;
import com.Community.controller.action.Community_BoardWrite_Action;
import com.Community.controller.action.Community_CommentDelete_Action;
import com.Community.controller.action.Community_CommentWrite_Action;

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

		//게시글 관련 command
		if (command.equals("board_list")) {
			action = new Community_BoardList_Action();
		}
		if (command.equals("board_write_form")) {
			action = new Community_BoardWriteForm_Action();
		}
		if (command.equals("board_write")) {
			action = new Community_BoardWrite_Action();
		}
		if (command.equals("board_view")) {
			action = new Community_BoardView_Action();
		}
		if (command.equals("board_update_delete_form")) {
			action = new Community_BoardUpdateDeleteForm_Action();
		}
		if (command.equals("board_update_form")) {
			action = new Community_BoardUpdateForm_Action();
		}
		if (command.equals("board_delete")) {
			action = new Community_BoardDelete_Action();
		}
		if (command.equals("board_like")) {
			action = new Community_BoardUpdateLike_Action();
		}
		
		//댓글 관련 command
		if (command.equals("comment_write")) {
			action = new Community_CommentWrite_Action();
		}
		if (command.equals("comment_delete")) {
			action = new Community_CommentDelete_Action();
		}
		
		
		return action;
	}
}

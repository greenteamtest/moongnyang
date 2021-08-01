package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

public class Community_BoardWrite_Action implements Community_Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String user_email="email테스트용"; // 실제 이메일로 변경해줘야함 *수정요망*
		String title=request.getParameter("title");
		String contents=request.getParameter("contents");
		String animal_tag=request.getParameter("animal_tag");
		String board_tag=request.getParameter("board_tag");
		
		//////////////////////////////////////////////////////
		CommunityVO cVO = new CommunityVO();
		/* 1. 유저 이메일 (글쓴이) 설정 */
		cVO.setUser_email(user_email);
		/* 2. 글제목 설정 */
		cVO.setTitle(title); 
		/* 3. 글 내용 설정 */
		cVO.setContents(contents); 
		/* 4. animal_tag 동물게시판 종류 설정 */
		cVO.setAnimal_tag(Integer.parseInt(animal_tag));
		/* 5. board_tag 세부게시판 종류 설정 */
		cVO.setBoard_tag(Integer.parseInt(board_tag));
		/* read_count, like_count, write_date 는 디폴트 값 넣을 것임 - 0,0,오늘 일시 */
		/* 6. picture 설정 */
		
		/////////////////////////////////////////////////////

		CommunityDAO cDAO = CommunityDAO.getInstance();
		cDAO.insertBoard(cVO); //게시물 등록하기 method 호출

		new Community_BoardList_Action().execute(request, response);

	}

}

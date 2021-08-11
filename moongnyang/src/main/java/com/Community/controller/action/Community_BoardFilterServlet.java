package com.Community.controller.action;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;


@WebServlet("/Filter.do")
public class Community_BoardFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Community_BoardFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//2개의 체크박스 그룹에서 고른 값 가져와서 String 배열에 저장
		String animal_tagArr[] = request.getParameterValues("animal_tag");
		String board_tagArr[] = request.getParameterValues("board_tag");

		//DB에 넣을 쿼리문 작업을 위해 각각의 배열 요소에'animal_ tag='문자열을 결합
		for (int i = 0; i < animal_tagArr.length; i++) {
			animal_tagArr[i] = "animal_tag=" + animal_tagArr[i];
		}
		//DB에 넣을 쿼리문 작업을 위해 각각의 배열 요소에'board_ tag='문자열을 결합
		for (int i = 0; i < board_tagArr.length; i++) {
			board_tagArr[i] = "board_tag=" + board_tagArr[i];
		}
		//DB에 넣을 쿼리문 작업을 위해 배열의 요소들을 'or'문자열로 결합 
		String query_animal = String.join(" or ", animal_tagArr);
		String query_board = String.join(" or ", board_tagArr);
		
		//////////////////////////////////////////////////////////
	
		//DAO클래스의 selectFilteredBoards()호출하여 return값을 boardList변수에 저장 , 매개변수로 String query_animal, String query_board 넣어줌
		CommunityDAO cDAO = CommunityDAO.getInstance();
		List<CommunityVO> boardList=cDAO.selectFilteredBoards(query_animal,query_board);
		
		String url = "community/community_board_list.jsp";
		
		//List<CommunityVO>타입의 boardList를 request로 jsp로 보내줌
		request.setAttribute("boardList", boardList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}

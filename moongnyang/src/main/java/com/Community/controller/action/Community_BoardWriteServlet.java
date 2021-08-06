package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/community_writeBoard.do")
public class Community_BoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* 이게모지..? */
	public Community_BoardWriteServlet() {
		super();

	}
	////////////

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("community/community_board_update.jsp"); // 여기 경로 수정해야할 수도
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletContext();
		String path = context.getRealPath("community/upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;

		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());

		/* 파라미터로 값 가져와서 변수에 저장해두기 */
		String user_email = multi.getParameter("user_email");
		String title = multi.getParameter("title");
		String contents = multi.getParameter("contents");
		int animal_tag = Integer.parseInt(multi.getParameter("animal_tag"));
		int board_tag = Integer.parseInt(multi.getParameter("board_tag"));

		String File1 = multi.getFilesystemName("file1");
		String File2 = multi.getFilesystemName("file2");
		String File3 = multi.getFilesystemName("file3");
		String File4 = multi.getFilesystemName("file4");
		String File5 = multi.getFilesystemName("file5");

		/* VO에 Setting 하기 */
		CommunityVO cVO = new CommunityVO();

		cVO.setUser_email(user_email); // 1. 유저 이메일 (글쓴이) 설정
		cVO.setTitle(title);// 2. 글제목 설정
		cVO.setContents(contents);//3. 글 내용 설정 
		cVO.setAnimal_tag(animal_tag);//4. animal_tag 동물게시판 종류 설정
		cVO.setBoard_tag(board_tag);// 5. board_tag 세부게시판 종류 설정 
		
		cVO.setPic_url_1(File1);
		cVO.setPic_url_2(File2);
		cVO.setPic_url_3(File3);
		cVO.setPic_url_4(File4);
		cVO.setPic_url_5(File5);
		
		// read_count, like_count, write_date 는 디폴트 값 넣을 것임 - (0,0,오늘 일시) 
		
		CommunityDAO cDAO = CommunityDAO.getInstance();
		cDAO.insertBoard(cVO);
		

		new Community_BoardList_Action().execute(request, response); // 게시판 리스트 화면으로 이동

	}

}

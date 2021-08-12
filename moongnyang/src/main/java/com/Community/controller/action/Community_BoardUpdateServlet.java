package com.Community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;
import com.Community.dto.Community_CommentVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/community_updateBoard.do")
public class Community_BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Community_BoardUpdateServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		int board_idx = Integer.parseInt(multi.getParameter("board_idx"));// 게시글 번호
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

		if (File1 == null) {
			File1 = multi.getParameter("nonmakeImg");
		}
		if (File2 == null) {
			File2 = multi.getParameter("nonmakeImg");
		}
		if (File3 == null) {
			File3 = multi.getParameter("nonmakeImg");
		}
		if (File4 == null) {
			File4 = multi.getParameter("nonmakeImg");
		}
		if (File5 == null) {
			File5 = multi.getParameter("nonmakeImg");
		}
		

		/* VO에 Setting 하기 */
		CommunityVO cVO = new CommunityVO();
		cVO.setBoard_idx(board_idx); // 게시글 번호
		cVO.setUser_email(user_email); // 1. 유저 이메일 (글쓴이) 설정
		cVO.setTitle(title);// 2. 글제목 설정
		cVO.setContents(contents);// 3. 글 내용 설정
		cVO.setAnimal_tag(animal_tag);// 4. animal_tag 동물게시판 종류 설정
		cVO.setBoard_tag(board_tag);// 5. board_tag 세부게시판 종류 설정

		cVO.setPic_url_1(File1);
		cVO.setPic_url_2(File2);
		cVO.setPic_url_3(File3);
		cVO.setPic_url_4(File4);
		cVO.setPic_url_5(File5);

		// read_count, like_count, write_date 는 건드리지 않을 것 (수정했는데 바뀌면 안되는 값)

		CommunityDAO cDAO = CommunityDAO.getInstance();
		cDAO.updateBoard(cVO);

		//////////////////////////////////////
		String url="/community/community_board_view.jsp";
		
		
		
		CommunityDAO cDAO1=CommunityDAO.getInstance();
	
		/*클릭한 게시글의 번호를 통해 데이터 출력하는 메쏘드*/
		CommunityVO cVO1=cDAO1.selectOneBoardByNum(Integer.toString(board_idx));
		
		request.setAttribute("board", cVO1);
		
		
		//댓글............................................
		List<Community_CommentVO> commentList = cDAO1.selectAllComments(Integer.toString(board_idx));

		request.setAttribute("commentList", commentList);
	

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	
	}

}

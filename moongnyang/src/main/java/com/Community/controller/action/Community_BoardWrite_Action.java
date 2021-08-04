package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dto.CommunityVO;

public class Community_BoardWrite_Action implements Community_Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		/* 파일업로드 위해 추가한 사항 08.04일자 */

//		String realPath = request.getServletContext().getRealPath("community_upload");
//		String contextPath=request.getServletContext().getContextPath();
//		String encType = "UTF-8";
//		int sizeLimit = 20 * 1024 * 1024;
//	
//		MultipartRequest multi = new MultipartRequest(request, realPath, sizeLimit, encType, new DefaultFileRenamePolicy());

		///////////////////////////////////////////////////////
//		String user_email = "email테스트용"; // 실제 이메일로 변경해줘야함 *수정요망*
//		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
//		String user_email = multi.getParameter("user_email");
//		String title = multi.getParameter("title");
//		String contents = multi.getParameter("contents");
//		String animal_tag = multi.getParameter("animal_tag");
//		String board_tag = multi.getParameter("board_tag");
//		String File1 = multi.getFilesystemName("file1");
//		String File2 = multi.getFilesystemName("file2");
//		String File3 = multi.getFilesystemName("file3");
//		String File4 = multi.getFilesystemName("file4");
//		String File5 = multi.getFilesystemName("file5");
		//////////////////////////////////////////////////////
//		CommunityVO cVO = new CommunityVO();
		/* 1. 유저 이메일 (글쓴이) 설정 */
//		cVO.setUser_email(user_email);
//		cVO.setUser_email(user_email);
		/* 2. 글제목 설정 */
//		cVO.setTitle(title);
		/* 3. 글 내용 설정 */
//		cVO.setContents(contents);
		/* 4. animal_tag 동물게시판 종류 설정 */
//		cVO.setAnimal_tag(Integer.parseInt(animal_tag));
		/* 5. board_tag 세부게시판 종류 설정 */
//		cVO.setBoard_tag(Integer.parseInt(board_tag));
		/* 6. picture 설정 */
		// 추가해야함

		/* read_count, like_count, write_date 는 디폴트 값 넣을 것임 - (0,0,오늘 일시) */

		/////////////////////////////////////////////////////
		/* mybatis 연동 */
//		service.insert_board(cVO);
//		new Community_BoardList_Action().execute(request, response); // 게시판 리스트 화면으로 이동

	}

}

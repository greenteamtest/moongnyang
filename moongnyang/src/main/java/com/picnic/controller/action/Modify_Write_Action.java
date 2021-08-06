package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.picnic.dto.PicnicVO;

public class Modify_Write_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/search_kakao.jsp";
		
		System.out.println("1111");
		
			request.setCharacterEncoding("UTF-8");
		  
	        // 파일 업로드를 하기 위해서 cos.jar 추가 및 객체 생성
	        MultipartRequest multi = null;
	 
	        // 업로드 될 파일의 최대 사이즈 (10메가)
	        int sizeLimit = 5 * 1024 * 1024;
	 
	        // 파일이 업로드될 실제 tomcat 폴더의 경로 (WebContent 기준)
	    
	       // String savePath = request.getSession().getServletContext().getRealPath("/upload"); 
	        String savePath = "C:/Users/hodori/git/moongnyang/moongnyang/src/main/webapp/picnic/upload";
	        System.out.println(savePath);
	        // 
	        try{
	            multi=new MultipartRequest(
	                    request
	                    , savePath
	                    , sizeLimit
	                    , "UTF-8"
	                    , new DefaultFileRenamePolicy()); 
	 
	         }catch (Exception e) {
	                e.printStackTrace();
	         } 
	         
	        //파일 이름 저장
	        String file1 = multi.getFilesystemName("file1");
	        String file2 = multi.getFilesystemName("file2");
	        String file3 = multi.getFilesystemName("file3");
	        String file4 = multi.getFilesystemName("file4");
		
		PicnicVO vo = new PicnicVO();
		vo.setName(multi.getParameter("name"));
		vo.setPlace(multi.getParameter("address"));
		vo.setRoad_place(multi.getParameter("RAddress"));
		vo.setPhone(multi.getParameter("phone"));
		vo.setList_content(multi.getParameter("list_content"));
		vo.setFile_name1(file1);
		vo.setFile_name2(file2);
		vo.setFile_name3(file3);
		vo.setFile_name4(file4);
		System.out.println(file1);
		vo.setKey(multi.getParameter("key"));
		
		service.board_Update_Image(vo);
		
		service.board_Update(vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

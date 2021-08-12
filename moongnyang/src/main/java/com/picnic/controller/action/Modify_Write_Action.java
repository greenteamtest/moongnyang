package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.picnic.dto.PicnicVO;

public class Modify_Write_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/board_view.jsp";
		
			request.setCharacterEncoding("UTF-8");
		  
	        // 파일 업로드를 하기 위해서 cos.jar 추가 및 객체 생성
	        MultipartRequest multi = null;
	 
	        // 업로드 될 파일의 최대 사이즈 (10메가)
	        int sizeLimit = 5 * 1024 * 1024;
	 
	        // 파일이 업로드될 실제 tomcat 폴더의 경로 (WebContent 기준)
	    
	       String savePath = request.getSession().getServletContext().getRealPath("/picnic/upload"); 
	      
	       //String savePath = "C:/Users/hodori/git/moongnyang/moongnyang/src/main/webapp/picnic/upload";
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
	        String key = multi.getParameter("key");
		PicnicVO pVo = new PicnicVO();
		pVo.setName(multi.getParameter("name"));
		pVo.setPlace(multi.getParameter("address"));
		pVo.setRoad_place(multi.getParameter("RAddress"));
		pVo.setPhone(multi.getParameter("phone"));
		pVo.setList_content(multi.getParameter("content"));
		pVo.setFile_name1(file1);
		pVo.setFile_name2(file2);
		pVo.setFile_name3(file3);
		pVo.setFile_name4(file4);
		pVo.setKey(key);
		
		service.board_Update_Image(pVo);		
		service.board_Update(pVo);
		
		
		PicnicVO vo = service.picnic_Select(key);
		PicnicVO voF = service.image_Select(key);
		//String savePath = request.getSession().getServletContext().getRealPath("/upload");
		if (voF != null) {
			if (voF.getFile_name1() != null) {
				vo.setFile_name1(voF.getFile_name1());
			} else {
				vo.setFile_name1("test.jpg");
			}
			if (voF.getFile_name2() != null) {
				vo.setFile_name2(voF.getFile_name2());
			} else {
				vo.setFile_name2("test.jpg");
			}
			if (voF.getFile_name3() != null) {
				vo.setFile_name3(voF.getFile_name3());
			} else {
				vo.setFile_name3("test.jpg");
			}
			if (voF.getFile_name4() != null) {
				vo.setFile_name4(voF.getFile_name4());
			} else {
				vo.setFile_name4("test.jpg");
			}
		}else {
			vo.setFile_name1("test.jpg");
			vo.setFile_name2("test.jpg");
			vo.setFile_name3("test.jpg");
			vo.setFile_name4("test.jpg");
		}
		List<PicnicVO> list = service.picnic_Select2(key);

		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

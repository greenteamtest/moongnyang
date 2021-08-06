package com.picnic.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.picnic.dto.PicnicVO;

public class Picnic_DAO {

	public int picnic_Update_Insert(SqlSession session, PicnicVO vo) {
		return session.insert("picnic_Update_Insert", vo);
	}

	public PicnicVO picnic_Select(SqlSession session, String str) {
		return session.selectOne("picnic_Select", str);
	}

	public List<PicnicVO> picnic_Select2(SqlSession session, String str) {
		return session.selectList("picnic_Select2", str);
	}

	public int picnic_Write(SqlSession session, PicnicVO vo) {
		return session.insert("picnic_Write", vo);
	}

	public int picnic_Delete(SqlSession session, int num) {
		return session.insert("picnic_Delete", num);
	}
	public PicnicVO image_Select(SqlSession session, String str) {
		return session.selectOne("image_Select", str);
	}
	public int board_Update(SqlSession session, PicnicVO vo) {
		return session.update("board_Update", vo);
	}
	public int board_Update_Image(SqlSession session, PicnicVO vo) {
		return session.update("board_Update_Image", vo);
	}
}

package com.picnic.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.picnic.dto.PicnicVO;

public class Picnic_DAO {

	public int picnic_Update_Insert(SqlSession session, PicnicVO bVo) {
		return session.insert("picnic_Update_Insert", bVo);
	}

	public PicnicVO picnic_Select(SqlSession session, String str) {
		return session.selectOne("picnic_Select", str);
	}

	public List<PicnicVO> picnic_Select2(SqlSession session, String str) {
		return session.selectList("picnic_Select2", str);
	}

	public int picnic_Write(SqlSession session, PicnicVO bVo) {
		return session.insert("picnic_Write", bVo);
	}

	public int picnic_Delete(SqlSession session, int num) {
		return session.insert("picnic_Delete", num);
	}
}

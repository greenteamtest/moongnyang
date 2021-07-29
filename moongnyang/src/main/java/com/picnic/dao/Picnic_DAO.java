package com.picnic.dao;

import org.apache.ibatis.session.SqlSession;
import com.picnic.dto.PicnicVO;

public class Picnic_DAO {

	public int picnic_Update_Insert(SqlSession session, PicnicVO bVo) {
		return session.selectOne("picnic_Update_Insert", bVo);
	}
	public PicnicVO picnic_Select(SqlSession session, String str) {
		return session.selectOne("picnic_Select", str);
	}
}

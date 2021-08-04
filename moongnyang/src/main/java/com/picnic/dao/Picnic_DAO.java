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
		System.out.println(str);
		return session.selectList("picnic_Select2", str);
	}
	public int picnic_Insert(SqlSession session, PicnicVO bVo) {
		return session.insert("picnic_Select2", bVo);
	}
}

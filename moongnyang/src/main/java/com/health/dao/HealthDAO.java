package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.health.dto.HealthPlaceVo;

public class HealthDAO {

	public List<HealthPlaceVo> selectPlace_List(SqlSession session, String key) { // select place list
		return session.selectList("selectPlace_List", key);
	}

	public HealthPlaceVo selectPlace_info(SqlSession session, int place_key) { // select place list
		return session.selectOne("selectPlace_info", place_key);
	}

//	public Integer select_boardIDX(SqlSession session, Map<String, Object> map) {
//		return session.selectOne("select_boardIDX", map);
//	}
//
//	public int delete_board(SqlSession session, int board_idx) {
//		return session.delete("delete_board", board_idx);
//	}
//
//	public int insert_board(SqlSession session, Map<String, Object> map) {
//		return session.insert("insert_board", map);
//	}

}
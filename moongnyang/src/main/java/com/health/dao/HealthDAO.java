package com.health.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.health.dto.HealthVo;

public class HealthDAO {

	public List<HealthVo> selectList_board(SqlSession session) {
		return session.selectList("selectList_board");
	}

	public List<HealthVo> selectUser_Info(SqlSession session, Map<String, Object> map) {
		return session.selectList("selectUser_Info", map);
	}

	public Integer select_boardIDX(SqlSession session, Map<String, Object> map) {
		return session.selectOne("select_boardIDX", map);
	}

	public int delete_board(SqlSession session, int board_idx) {
		return session.delete("delete_board", board_idx);
	}

	public int insert_board(SqlSession session, Map<String, Object> map) {
		return session.insert("insert_board", map);
	}

	public int insert_info(SqlSession session, Map<String, Object> map) {
		return session.insert("insert_info", map);
	}

	public int revise_board(SqlSession session, Map<String, Object> map) {
		return session.delete("revise_board", map);
	}

	public String selectUser_PW(SqlSession session, Map<String, Object> map) {
		return session.selectOne("selectUser_PW", map);
	}

}
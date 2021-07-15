package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.VisitVo;

public class VisitDAO {

	public List<VisitVo> selectList_board(SqlSession session) {
		return session.selectList("selectList_board");
	}

	public List<VisitVo> selectUser_Info(SqlSession session, Map<String, Object> map) {
		return session.selectList("selectUser_Info", map);
	}

	public Integer select_boardIDX(SqlSession session, Map<String, Object> map) {
		return session.selectOne("select_boardIDX", map);
	}

	public String select_checkID(SqlSession session, String id) {
		return session.selectOne("select_checkID", id);
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
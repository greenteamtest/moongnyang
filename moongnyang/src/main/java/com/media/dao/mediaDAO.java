package com.media.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.media.dto.mediaVO;

public class mediaDAO {
	public mediaDAO() {

	}

	public List<mediaVO> load_medialist(SqlSession session) {
		return session.selectList("load_medialist");
	}

}
package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MenuVO;

@Repository
public class MenuDAO {

	@Autowired
	private SqlSession sqlsession;
	private static final String MU = "daldal.mappers.menuMapper.";
	
	public List<MenuVO> selectList() {
		return sqlsession.selectList(MU + "selectList");
	}
	
	public MenuVO selectOne(MenuVO mvo) {
		return sqlsession.selectOne(MU + "selectOne", mvo);
	}

	public List<MenuVO> productList(MenuVO mvo) {
		return sqlsession.selectList(MU + "productList", mvo);
	}
	
	public List<MenuVO> menu() throws Exception {
		return sqlsession.selectList(MU + "menu");
	}
}
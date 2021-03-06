package dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ProductCri.PageMaker;
import vo.FranchiseVO;
import vo.MenuVO;
import vo.ProductVO;

@Repository
public class ProductDAO {
	
	@Autowired // 자동주입
	private SqlSession sqlsession;
	private static final String PD = "daldal.mappers.productMapper.";

	
	public List<ProductVO> fsortList(ProductVO vo) {
		return sqlsession.selectList(PD + "fsortList", vo);
	}
	
	public List<ProductVO> categoryM(ProductVO vo) {
		return sqlsession.selectList(PD + "categoryM", vo);
	}

	public List<ProductVO> categoryS(ProductVO vo) {
		return sqlsession.selectList(PD + "categoryS", vo);
	}
	
	// 메뉴 목록
	public List<ProductVO> Cricategory(MenuVO mvo, PageMaker pageMaker) throws Exception {
		
		Map<Object, Object> cate = new HashMap<Object, Object>();
		cate.put("mubcode", mvo.getMubcode());
		cate.put("sno", pageMaker.getSno());
		cate.put("perPageNum", pageMaker.getPerPageNum());
		return sqlsession.selectList(PD + "Cricategory", cate);
	}
	
	// 메뉴 갯수
	public int CricategoryCount(MenuVO mvo) throws Exception {
		return sqlsession.selectOne(PD + "CricategoryCount", mvo);
	}
	
	// 메뉴 목록
	public List<ProductVO> category(MenuVO mvo) throws Exception {
		return sqlsession.selectList(PD + "category", mvo);
	}
	
	// 메뉴 갯수
	public int categoryCount(MenuVO mvo) throws Exception {
		return sqlsession.selectOne(PD + "categoryCount", mvo);
	}
		
	// Cri
	public List<ProductVO> listCriteria (PageMaker pageMaker) throws Exception {
		return sqlsession.selectList(PD + "listCriteria", pageMaker);
	}
	 
    // 전체 게시글 수 구하기
    public int TotalCount() throws Exception {
    	return sqlsession.selectOne(PD + "getTotalCount");
    }

	public List<ProductVO> SeasonList() {
		return sqlsession.selectList(PD + "SeasonList");
	}
	
	public List<ProductVO> NewList() {
		return sqlsession.selectList(PD + "NewList");
	}
	
	public List<ProductVO> BestList() {
		return sqlsession.selectList(PD + "BestList");
	}
	
	public List<ProductVO> selectList() {
		return sqlsession.selectList(PD + "selectList");
	}
	
	public ProductVO selectOne(ProductVO vo) {
		return sqlsession.selectOne(PD + "selectOne", vo);
	}
	
	public int insert(ProductVO vo) {
		return sqlsession.insert(PD + "insert", vo);
	}
	
	public int delete(ProductVO vo) {
		return sqlsession.delete(PD + "delete", vo);
	}
	
	public ProductVO pdetail(ProductVO vo) {
		return sqlsession.selectOne(PD + "pdetail", vo);
	}
	
	// 전체 제품 목록 출력
	public List<ProductVO> productList() {
		return sqlsession.selectList(PD + "productList");
	}

	// '메뉴' 이용했을 때 제품 목록 출력
	public List<ProductVO> mProductList(MenuVO mvo) {
		return sqlsession.selectList(PD + "mProductList", mvo);
	}
	
	// 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<ProductVO> listAll(String searchOption, String keyword) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    return sqlsession.selectList(PD + "listAll", map);
	}
	
	// 게시글 레코드 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    return sqlsession.selectOne(PD + "countArticle", map);
	}
	
	// 해시태그 전체 목록 ==> 키워드 매개변수 추가
	public List<ProductVO> hashtagAll(String keyword) throws Exception {
	    // 키워드 맵에 저장
	    return sqlsession.selectList(PD + "hashtagAll", keyword);
	}
	
	// 해시태그 레코드 갯수
	public int hashtagCount(String keyword) throws Exception {
	    // 키워드 맵에 저장
	    return sqlsession.selectOne(PD + "hashtagCount", keyword);
	}
	
	// 서브 메뉴 갯수
	public int mProductCount(MenuVO mvo) throws Exception {
		return sqlsession.selectOne(PD + "mProductCount", mvo);
	}
}
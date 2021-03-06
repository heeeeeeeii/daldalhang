package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FranchiseDAO;
import vo.FranchiseVO;
import vo.ProductVO;

@Service
public class FRServiceImpl implements FRService {
	
	@Autowired
	FranchiseDAO dao;
	
	@Override
	public int insert(FranchiseVO fvo) {
		return dao.insert(fvo);
	}
	
	@Override
	public FranchiseVO fdetail(FranchiseVO fvo) {
		return dao.fdetail(fvo);
	}
	
	@Override
	public List<FranchiseVO> selectList() {
		return dao.selectList();
	}
	
	@Override
	public FranchiseVO selectOne(FranchiseVO fvo) {
		return dao.selectOne(fvo);
	}

	@Override
	public List<FranchiseVO> fsortList(ProductVO pvo) {
		return dao.fsortList(pvo);
	}

	@Override
	public int fsortCount(ProductVO pvo) {
		return dao.fsortCount(pvo);
	}
	
	@Override
	public List<FranchiseVO> franchiseMenu(ProductVO pvo) {
		return dao.franchiseMenu(pvo);
	}
	
	@Override
	public List<ProductVO> franchiseSubMenu(ProductVO pvo) {
		return dao.franchiseSubMenu(pvo);
	}
	
	@Override
	public int franchiseSubCount(ProductVO pvo) {
		return dao.franchiseSubCount(pvo);
	}
}
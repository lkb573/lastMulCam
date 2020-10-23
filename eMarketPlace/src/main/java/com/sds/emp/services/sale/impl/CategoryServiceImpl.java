package com.sds.emp.services.sale.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.keygen.KeyGenService;
import com.sds.emp.services.sale.CategoryService;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductService productService;
	@Autowired
	private KeyGenService pkGenService;
	
	public String addCategory(CategoryVO categoryVO) throws Exception {
		try {
			String categoryNo = pkGenService.getNextPk("CATEGORY", "CATEGORY_NO");
			categoryVO.setCategoryNo(categoryNo);
			categoryDAO.addCategory(categoryVO);
			return categoryNo;
		} catch (Exception e) {
			throw new Exception(categoryVO.getCategoryName() + "' 등록 실패.", e);
		}
	}

	public void updateCategory(CategoryVO categoryVO) throws Exception {
		ProductVO productVO = new ProductVO();
		productVO.setCategoryNo(categoryVO.getCategoryNo());
		try {
			if ("N".equals(categoryVO.getUseYn()) && productService.countProductListByCategory(productVO) > 0) {
				throw new Exception(categoryVO.getCategoryName() + "' 중지로 변경할 수 없음.");
			}
			categoryDAO.updateCategory(categoryVO);
		} catch (Exception e) {
			throw new Exception(categoryVO.getCategoryName() + "' 수정 실패.", e);
		}
	}

	public Page getCategoryList(SearchVO searchVO) throws Exception {
		try {
			return categoryDAO.getCategoryList(searchVO);
		} catch (Exception e) {
			throw new Exception("카테고리 목록 조회 실패.", e);
		}
	}

	public List<CategoryVO> getDropDownCategoryList() throws Exception {
		try {
			return categoryDAO.getDropDownCategoryList();
		} catch (Exception e) {
			throw new Exception("카테고리명  조회 실패.", e);
		}
	}

	public CategoryVO getCategory(String categoryNo) throws Exception {
		try {
			CategoryVO categoryVO = categoryDAO.getCategory(categoryNo);
			if (categoryVO == null) {
				throw new Exception("카테고리 없음.");
			}
			return categoryVO;
		} catch (Exception e) {
			throw new Exception(" 카테고리  상세 정보 조회 실패.", e);
		}
	}
}

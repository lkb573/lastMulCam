package com.sds.emp.services.sale.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.keygen.KeyGenService;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private KeyGenService pkGenService;

	public int countProductListByCategory(ProductVO productVO) throws Exception {
		try {
			int count = productDAO.countProductListByCategory(productVO);
			return count;
		} catch (Exception e) {
			throw new Exception(productVO.getCategoryNo() + "' ��ǰ ���� ��ȸ ����.", e);
		}
	}

	public String addProduct(ProductVO productVO) throws Exception {
		try {
			String prodNo = pkGenService.getNextPk("PRODUCT", "PROD_NO");
			productVO.setProdNo(prodNo);
			productDAO.addProduct(productVO);
			return prodNo;
		} catch (Exception e) {
			throw new Exception(productVO.getProdName() + "' ��� ����.", e);
		}
	}

	public void updateProduct(ProductVO productVO) throws Exception {
		try {
			productDAO.updateProduct(productVO);
		} catch (Exception e) {
			throw new Exception(productVO.getProdName() + "' ��ǰ ���� ���� ����.", e);
		}
	}

	public ProductVO getProduct(ProductVO productVO) throws Exception {
		try {
			ProductVO resultProductVO = productDAO.getProduct(productVO);

			if (resultProductVO == null) {
				throw new Exception("��ǰ ���� ����.");
			}
			return resultProductVO;
		} catch (Exception e) {
			throw new Exception("��ǰ  �� ���� ��ȸ ����.", e);
		}
	}

	public Page getProductList(SearchVO searchVO) throws Exception {
		try {
			return productDAO.getProductList(searchVO);
		} catch (Exception e) {
			throw new Exception("��ǰ ��� ��ȸ ����.", e);
		}
	}
}

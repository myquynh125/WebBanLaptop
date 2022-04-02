package WebBanLaptop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebBanLaptop.DAO.ProductsDao;
import WebBanLaptop.Dto.ProductsDto;
@Service
public class CategoryServiceImp implements ICategoryService{
	
	@Autowired
	private ProductsDao productsDao;
	
	public List<ProductsDto> GetDataProductPaginate(int start, int end){
		return productsDao.GetDataProductPaginate(start, end);
	}
	
	public List<ProductsDto> GetAllProductByid(int id){
		return productsDao.GetAllProductByid(id);
	}
}

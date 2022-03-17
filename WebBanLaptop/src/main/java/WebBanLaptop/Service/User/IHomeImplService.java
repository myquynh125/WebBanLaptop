package WebBanLaptop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebBanLaptop.DAO.SlideDao;
import WebBanLaptop.Entity.Slides;
@Service
public class IHomeImplService implements IHomeService{
	@Autowired
	private SlideDao slideDao;
	public List<Slides> GetDataSlide() {
		return slideDao.GetDataSlide();
	}
	
}

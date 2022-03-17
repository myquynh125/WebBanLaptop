package WebBanLaptop.UserController;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WebBanLaptop.DAO.SlideDao;
import WebBanLaptop.Service.User.IHomeImplService;


@Controller
public class HomeController {
	@Autowired
	IHomeImplService homService;
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("slides", homService.GetDataSlide());
		return mv;
	}
	
	@RequestMapping(value = "/product")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("user/product");
		return mv;
	}
}

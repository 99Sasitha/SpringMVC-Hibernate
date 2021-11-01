package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
//_____________________________________Data show in table_____________________________________________________________
		@RequestMapping("/")
	public String home(Model m) {
		List<Product> products=	productDao.getProducts();
		m.addAttribute("products",products);

		return "index";
	}
		//_______________________________________show Add Product Form_______________________________
		@RequestMapping("/add-product")
		public String addProduct(Model m) {
			
			m.addAttribute("title","Add-Product");
			return "add_product_form";
			
		}
		
		//_________________________________________ Add Product Form Handler_________________________________________
		
		@RequestMapping(value="/handle-product",method=RequestMethod.POST)
		public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
			System.out.println(product);
			productDao.createProduct(product);
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/");
			return redirectView;
				
		}
		
		//__________________________________________________ Handle Delete Product________________________________________________
		@RequestMapping("/delete/{productId}")
		public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
			
			this.productDao.deleteProduct(productId);
			RedirectView redirectView=new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/");
			return redirectView;
			
		}
		
		//____________________________________________________update Handler_________________________________________________________
		@RequestMapping("/update/{productId}")
		public String updateForm(@PathVariable("productId") int pid,Model model) {
			
			Product product=this.productDao.getSingleProduct(pid);
			model.addAttribute("product",product);
			
			return "update_form";
		}
		
		
		

}

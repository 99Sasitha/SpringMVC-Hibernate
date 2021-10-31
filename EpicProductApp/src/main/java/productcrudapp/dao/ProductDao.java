package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//_________________________________________createProduct_______________________________________________________________________
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	
	}
	
	//____________________________________________________getAllProducts______________________________________________________
	
	public List<Product> getProducts(){
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		
		return products;
	
	}
	
	//___________________________________________________________deleteProduct_______________________________________________________
	@Transactional
	public void deleteProduct(int pid) {
		Product p=this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
		
		
	}
	
	//_________________________________________________________getSingleProduct________________________________________________________
	
	public Product getSingleProduct(int pid) {
		return this.hibernateTemplate.get(Product.class,pid);
		
	}

}

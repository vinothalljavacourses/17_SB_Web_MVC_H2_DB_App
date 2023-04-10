package com.vinothit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.vinothit.entity.ProductEntity;
import com.vinothit.repository.ProductRepo;

@Controller
public class ProductController {
	
	@Autowired
	private ProductRepo productRepo;
	
	@GetMapping("/")
	public String loadIndexPage(Model model) {
		model.addAttribute("products", new ProductEntity());
		return "index";
	}
	
	@PostMapping("/addProduct")
	public String addProduct(ProductEntity product, Model model) {
		
		System.out.println("ProductController :: addProduct ");
		
		System.out.println("Product :: " + product);
		
		ProductEntity productSaved = productRepo.save(product);
		
		System.out.println("addProduct :: productSaved " + productSaved);
		
		model.addAttribute("products", productSaved);
		model.addAttribute("msg", "Product Saved Successfully to Internal H2 DB....");
		
		return "index";
	}
	
	@GetMapping("/viewrecords")
	public String viewRecords(Model model) {
		
		System.out.println("ProductController :: viewRecords ");
		
		List<ProductEntity> allProducts = productRepo.findAll();
		
		System.out.println("allProducts :  " + allProducts);
		
		model.addAttribute("products", allProducts);
		
		return "productview";
	}
	

}

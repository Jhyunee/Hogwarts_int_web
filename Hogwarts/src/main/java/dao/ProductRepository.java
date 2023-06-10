package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	
//	private String productId;
//	private String name;
//	private Integer price;
	
//	private String description;
//	private String category;
//	private Integer unitsInStock;
//	private String condition;
//	private String filename;
//  private int quantity;

	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	public ProductRepository() {
		Product wand = new Product("W1", "Wand", 72000);
		wand.setDescription("12 inch, made out of wood");
		wand.setCategory("Wand");
		wand.setUnitsInStock(12);
		wand.setCondition("New");
		wand.setFilename("wand.jpg");
		
		Product book = new Product("B1", "Book", 50000);
		book.setDescription("Harry Potter series book set 1~7");
		book.setCategory("Book");
		book.setUnitsInStock(5);
		book.setCondition("New");
		book.setFilename("books.jpg");

		Product badge = new Product("G1", "Badge", 30000);
		badge.setDescription("House Badge: Gryffindor, Slytherin, Hufflepuff, Ravenclaw");
		badge.setCategory("Badge");
		badge.setUnitsInStock(4);
		badge.setCondition("New");
		badge.setFilename("badge.jpg");
		
		Product broomstick = new Product("R1", "Broomstick", 100000);
		broomstick.setDescription("Broomstick, try flying with this!");
		broomstick.setCategory("Broomstick");
		broomstick.setUnitsInStock(3);
		broomstick.setCondition("Used");
		broomstick.setFilename("broomstick.jpg");
		
		listOfProducts.add(wand);
		listOfProducts.add(book);
		listOfProducts.add(badge);
		listOfProducts.add(broomstick);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null 
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	
}
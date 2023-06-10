package dto;

import java.io.Serializable;

public class Product implements Serializable {
	private static final long serialVersionID = -4274700572038677000L;
	
	private String productId;
	private String name;
	private Integer price;
	private String description;
	private String category;
	private Integer unitsInStock;
	private String condition;
	private String filename;
	private int quantity;
	
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Product(String productId, String name, Integer price) {
		super();
		this.productId = productId;
		this.name = name;
		this.price = price;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Integer getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(Integer unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getFilename() {
		return filename;
	}


	public void setFilename(String filname) {
		this.filename = filname;
	}

	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}

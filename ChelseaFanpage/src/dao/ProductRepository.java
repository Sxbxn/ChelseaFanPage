package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private Connection conn;
	private ResultSet rs;
	
	private static ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 


	public ProductRepository() {

		try {
			String dbURL = "jdbc:mysql://localhost:3307/Chelsea?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "1202";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//listOfProducts initiate
		String SQL = "SELECT * FROM PRODUCT";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				listOfProducts.add(new Product(rs.getString("pID"), rs.getString("pName"), rs.getInt("unitPrice"), rs.getString("pDescription"), rs.getString("filename"), rs.getInt("quantity")));
			}
			if (rs != null)
				rs.close();
		 	if (pstmt != null)
		 		pstmt.close();
		 	if (conn != null)
				conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getpID() != null && product.getpID().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
package com.Java_class_package;
import java.sql.Connection;
import java.sql.DriverManager;

public class Database_Connectivity {
	 Connection con;
 public Connection connectfun(){
	 try{
		Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost/hcc_database","Hcc_Admin","162049");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/hcc_database","root","162049");
		}catch(Exception e){
			System.out.println(e);
		}
	 return con;
 }
	public static void main(String[] args) {
	}
}

package TENET;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MySQLDatabase {
    
    Connection connect = null;
    Statement statement = null;
    
    PreparedStatement preparedStatement = null;
    ResultSet result = null;
    
    Scanner sc = null;

    void databaseOperation() {
        try {
            connect = Driver.getInstance();
            
            sc = new Scanner(System.in);
               
            statement = connect.createStatement();
            	
            result = statement.executeQuery("SELECT * FROM Books, Customer, Staff, Branch, Issue, Return_Books");

            while(result.next()) 
            {	
            	System.out.println("Book Name: " + result.getString("book_name"));
            	System.out.println("Book ISBN: " + result.getString("book_isbn"));
            	System.out.println("Book Author: " + result.getString("book_author"));
                System.out.println("Book Edition: " + result.getString("book_edition"));
           
            	System.out.println("Customer Name: " + result.getString("customer_name"));
            	System.out.println("Customer Address: " + result.getString("customer_address"));
            	System.out.println("Customer Email: " + result.getString("customer_email"));
            	
            	System.out.println("Staff Name: " + result.getString("staff_name"));
            	System.out.println("Staff Address: " + result.getString("staff_address"));
            	System.out.println("Staff Phone Number: " + result.getString("staff_phone"));
            	System.out.println("Staff Gender: " + result.getString("staff_gender"));
            
            	System.out.println("Branch Name: " + result.getString("branch_name"));
            	System.out.println("Branch Location: " + result.getString("branch_location"));
  
            	System.out.println("Expiry Date: " + result.getString("expiry_date"));
            	System.out.println("Issue Date: " + result.getString("issue_date"));

            	System.out.println("Expiry Date: " + result.getString("expiry_date"));
            	System.out.println("Issue Date: " + result.getString("issue_date"));
            	System.out.println("Book Name: " + result.getString("book_name"));
            	System.out.println("Book ID: " + result.getString("book_id"));
            	
            	break;
            }
        	
            	
        } catch (Exception ex)
        	{
        	System.out.println("MyError: " + ex);
        	
        	}
    }
}


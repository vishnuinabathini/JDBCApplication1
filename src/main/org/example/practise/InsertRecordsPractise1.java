package main.org.example.practise;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

class InsertRecordsPractise1 {
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employee","root","root");
            Statement stmt =con.createStatement();
            System.out.println(stmt.executeUpdate("insert into sakila.employee values (18, 'triveni',99)"));
            stmt.close();
            con.close();
        }catch(Exception e)
        {
            System.out.println(e);
        }
    }
}

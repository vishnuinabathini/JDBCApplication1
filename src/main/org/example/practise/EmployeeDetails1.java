package main.org.example.practise;

import java.sql.*;
public class EmployeeDetails1 {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/sakila";
    static final String USER = "root";
    static final String PASS = "root";

    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        try {
            Class.forName(JDBC_DRIVER);
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
            statement = connection.createStatement();
            String sql;
            sql = "select * from Persons";
            ResultSet resultset = statement.executeQuery(sql);
            while (resultset.next()) {
                int id = resultset.getInt(1);
                String lastname = resultset.getString(2);
                String firstname = resultset.getString(3);
                int age = resultset.getInt(4);
                System.out.print("Id: " + id + ", LastName: " + lastname+", FirstName = "+firstname + ", Age: " + age);
                System.out.println();
            }
            resultset.close();
            statement.close();
            connection.close();
        } catch (SQLException se) {
            System.out.println(se);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
            try {
                if (connection != null)
                    connection.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}

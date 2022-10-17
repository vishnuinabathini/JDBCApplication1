package main.org.example.practise;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCApp1 {
    public static void main(String[] args)  throws Exception{
      //  try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/sakila","root","root");
            Statement st= conn.createStatement();
            ResultSet rst=st.executeQuery("select * from sakila.employee");
            while(rst.next()){
                System.out.println(rst.getInt(1) + "  " +
                        rst.getString(2) + "  " + rst.getInt(3));
            }
            rst.close();
            st.close();
            conn.close();
       // }catch(Exception e){ System.out.println(e);}
    }
}

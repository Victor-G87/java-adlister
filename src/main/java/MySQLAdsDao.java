import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.sql.DriverManager;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;


    public MySQLAdsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to SQL database!", e);
        }
        ;
    }

    @Override
    public List<Ad> all() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM products");
            return createProductsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all products.", e);
        }
    }

    private List<Ad> createProductsFromResults(ResultSet rs) {
        return null;
    }


}

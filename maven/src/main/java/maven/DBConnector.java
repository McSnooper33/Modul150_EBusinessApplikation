package maven;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnector {
	

	public boolean validate(SneakerBean sneakerBean) throws ClassNotFoundException {
		boolean status = false;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try(Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/login?useSSL=false", "root", "Gg24682468");
				PreparedStatement preparedStatement = connection.prepareStatement("SELECT artikelName, artikelBeschreibung, preis FROM artikel where artikelNr = ?")) {
			
			  	preparedStatement.setString(1, sneakerBean.getArtikelName());
			  	preparedStatement.setString(2, sneakerBean.getArtikelBeschreibung());
			  	preparedStatement.setString(3, sneakerBean.getArtikelPreis());
			  	
	            ResultSet rs = preparedStatement.executeQuery();
	            status = rs.next();
		} catch (SQLException e) {
			System.out.println("Artikel nicht verfügbar");
            printSQLException(e);
        }
		if(status) {
			System.out.println("erfolgreich ArtikelDaten geholt: " + sneakerBean.getArtikelName() + " " + sneakerBean.getArtikelBeschreibung() + " " + sneakerBean.getArtikelPreis());
		}
        return status;
    }

	
	
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

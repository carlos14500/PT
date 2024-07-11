import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Path("/airquality")
public class AIRWS {

    @GET
    @Path("/data")
    @Produces(MediaType.APPLICATION_XML)
    public AirQualityData getAirQualityData(@QueryParam("fecha") String fecha) {
        AirQualityData data = new AirQualityData();
        
        // Conexión a la base de datos
        String jdbcUrl = "jdbc:tu_bd_url"; // Cambia esto a tu URL de la base de datos
        String username = "tu_usuario";    // Cambia esto a tu usuario de la base de datos
        String password = "tu_contraseña"; // Cambia esto a tu contraseña de la base de datos
        
        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String sql = "SELECT * FROM air_quality WHERE fecha = ?";
            try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
                pstmt.setString(1, fecha);
                try (ResultSet rs = pstmt.executeQuery()) {
                    if (rs.next()) {
                        data.setFecha(rs.getString("fecha"));
                        data.setAqi(rs.getInt("AQI"));
                        data.setAqiAlto(rs.getInt("AQI_Alto"));
                        data.setPm1(rs.getDouble("PM_1"));
                        data.setAltoPm1(rs.getInt("Alto_PM_1"));
                        data.setPm25(rs.getDouble("PM2_5"));
                        data.setAltoPm25(rs.getInt("Alto_PM2_5"));
                        data.setPm10(rs.getDouble("PM_10"));
                        data.setAltoPm10(rs.getInt("Alto_PM_10"));
                        data.setTemperatura(rs.getDouble("Temperatura"));
                        data.setTemperaturaAlta(rs.getDouble("Temperatura_Alta"));
                        data.setTemperaturaBaja(rs.getDouble("Temperatura_Baja"));
                        data.setHumedad(rs.getDouble("Humedad"));
                        data.setHumedadAlta(rs.getDouble("Humedad_Alta"));
                        data.setHumedadBaja(rs.getDouble("Humedad_Baja"));
                        data.setRocio(rs.getDouble("Rocio"));
                        data.setMaxRocio(rs.getDouble("Max_Rocio"));
                        data.setMinRocio(rs.getDouble("Min_Rocio"));
                        data.setBh(rs.getDouble("BH"));
                        data.setMaxTempBh(rs.getDouble("MAXTEMPBH"));
                        data.setMinTempBh(rs.getDouble("MINTEMPBH"));
                        data.setIndiceCalor(rs.getDouble("IndiceCalor"));
                        data.setMaxIndiceCalor(rs.getDouble("Max_IndiceCalor"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return data;
    }
}

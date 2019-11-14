
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource data = new DriverManagerDataSource();
        data.setDriverClassName("com.mysql.jdbc.Driver");
        data.setUrl("jdbc:mysql://localhost:3306/RegistroF");
        data.setUsername("root");
        data.setPassword("");
        return data;
    }
    

}

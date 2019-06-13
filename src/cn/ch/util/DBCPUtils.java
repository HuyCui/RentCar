package cn.ch.util;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.commons.dbcp.BasicDataSourceFactory;

public class DBCPUtils {
    private static DataSource ds = null;
    static {
    	Properties pro = new Properties();
    	try {
    		InputStream in = new DBCPUtils().getClass().getClassLoader()
    				.getResourceAsStream("dbcpconfig.properties");
    		pro.load(in);
			ds = BasicDataSourceFactory.createDataSource(pro);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
 
    public static Connection getConnection() throws SQLException{
        return ds.getConnection();
    }
    public static void closeConn(Connection conn){    
        if(conn!=null){
            try {
                conn.close();//�ر�
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

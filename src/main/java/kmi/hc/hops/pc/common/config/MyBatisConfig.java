package kmi.hc.hops.pc.common.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
 

@Configuration
@MapperScan("kmi.hc.hops.admin")
public class MyBatisConfig {
	
	@Bean
	public DataSource dataSource() {
		
		
		  HikariConfig hikariConfig = new HikariConfig();
		  hikariConfig.setDriverClassName("com.mysql.cj.jdbc.Driver");
		  hikariConfig.setJdbcUrl(
		  "jdbc:mysql://192.168.35.10:13303/HOPS?serverTimezone=UTC&characterEncoding=UTF-8"
		  ); hikariConfig.setUsername("HOPS_admin");
		  hikariConfig.setPassword("kmi@124578");

		HikariDataSource dataSource = new HikariDataSource(hikariConfig);
		return dataSource;
	}
	
//	@Bean
//	public DataSourceTransactionManager transactionManager() {
//		return new DataSourceTransactionManager(dataSource());
//		
//	}

	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception{
	  SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
	  factoryBean.setDataSource(dataSource()); // �뜲�씠�꽣�냼�뒪 �꽕�젙  
	  return factoryBean.getObject();
	}
}


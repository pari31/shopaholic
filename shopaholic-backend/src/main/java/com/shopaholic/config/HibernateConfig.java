package com.shopaholic.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages= {"com.shopaholic"})
@EnableTransactionManagement
public class HibernateConfig {
	
	private static final String DB_DRIVER="org.h2.Driver";
	private static final String DB_URL="jdbc:h2:tcp://localhost/~/shopaholic";
	private static final String DB_USERNAME="sa";
	private static final String DB_PASSWORD="";
	private static final String DB_DIALECT="org.hibernate.dialect.H2Dialect";
	
	
	//Step 1:Bean(It is an instance of defined function and which can be called by its name) Creation for DataSource
	@Bean(name="dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName(DB_DRIVER);
		dataSource.setUrl(DB_URL);
		dataSource.setUsername(DB_USERNAME);
		dataSource.setPassword(DB_PASSWORD);
		return dataSource;
	}
	
	//Step 2:Bean creation of sessionFactory which is to be linked by @Autowired and object name(sessionFactory)
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder lsfb=new LocalSessionFactoryBuilder(dataSource);
		lsfb.scanPackages("com.shopaholic");
		lsfb.addProperties(getHibernateProp());
		return lsfb.buildSessionFactory();
	}

	private Properties getHibernateProp() {
		Properties prop=new Properties();
		//Most Important Properties
		prop.put("hibernate.dialect", DB_DIALECT);
		//Optional
		prop.put("hibernate.hbm2ddl.auto", "update");
		prop.put("hibernate.show_sql", "true");
		prop.put("hibernate.format_sql", "true");
		return prop;
	}
	
	//Step 3 Transaction Manager Bean which is to be called by annotation @Transactional
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		//return new HibernateTransactionManager(sessionFactory);
		HibernateTransactionManager transactionManager=new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

}

package com.todaysTable.controller;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class DataSourceTest {
	
	@Inject
	private DataSource ds;
	
	@Inject
	private SqlSessionFactory sqlFactory;

	@org.junit.Test
	public void test() throws Exception{
		try (Connection conn = ds.getConnection()){
			System.out.println("conn 연결 : " +  conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@org.junit.Test
	public void factoryTest() {
		System.out.println("sqlFactory 연결 : " + sqlFactory);
	}
	
	@org.junit.Test
	public void sessionTest() throws Exception{
		SqlSession session = sqlFactory.openSession();
		try {
			System.out.println("sqlSession 연결 : " +  session);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	
	}
}

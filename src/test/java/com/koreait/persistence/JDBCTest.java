package com.koreait.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	
	//@Test
	public void testConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb?serverTimezone=Asia/Seoul",
					"java",
					"1234");
			log.info(conn);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
}
package com.LINKER.util.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {

	//세션팩토리의 생성과, 설정 파일의 위치를 지정
	private static SqlSessionFactory sqlSessionFactory;
	
	//클래스가 실행될 당시에 단한번만 동작됨
	static {
		
		try {
			
			String resourcePath = "mybatis/config/mybatis-config.xml"; //설정파일의 위치
			
			InputStream inputStream = Resources.getResourceAsStream(resourcePath);
			
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
			System.out.println("세션팩토리 생성됨");
			
		} catch (Exception e) {
			System.out.println("세션팩토리 오류");
			System.out.println(sqlSessionFactory);
			e.printStackTrace();
		}
		
	}

	//getter 메서드
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	
}

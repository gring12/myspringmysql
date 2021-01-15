package com.koreait.service;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTest {

	@Setter (onMethod_ = @Autowired)	
	private BoardService service;
	
	//@Test
	public void testGetList() {
		log.info("Service에서 리스트함..............");
		service.getList().forEach(board -> log.info(board));
	}
}
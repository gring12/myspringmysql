package com.koreait.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.domain.BoardVO;
import com.koreait.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Setter (onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	public List<BoardVO> getList(){
		
		return mapper.getList();
	}
}

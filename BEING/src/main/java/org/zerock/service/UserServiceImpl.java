package org.zerock.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.UserVO;
import org.zerock.dto.LoginDTO;
import org.zerock.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	@Transactional
	public UserVO login(LoginDTO dto) throws Exception {
		return userMapper.login(dto);
	}

	@Override
	@Transactional
	public void keepLogin(String email, String sessionId, Date next) throws Exception {
		userMapper.keepLogin(email, sessionId, next);

	}

	@Override
	@Transactional
	public UserVO checkLoginBefore(String value) {
		return userMapper.checkUserWithSessionKey(value);
	}

	@Override
	@Transactional
	public void create(UserVO userVO) throws Exception {
		userMapper.create(userVO);
	}

	@Override
	@Transactional
	public UserVO read(String email) throws Exception {
		return userMapper.read(email);
	}

	@Override
	public List<UserVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return userMapper.listPage(page);
	}

	@Override
	public List<UserVO> listCriteria(Criteria cri) throws Exception {
		return userMapper.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return userMapper.countPaging(cri);
	}

	@Override
	public void modify(UserVO user) throws Exception {
		userMapper.update(user);

	}

	@Override
	@Transactional
	public UserVO kakaoLogin(UserVO userVO) throws Exception {
		return userMapper.kakaoLogin(userVO);

	}

	@Override
	public void confirmEmail(String email) {
		// TODO Auto-generated method stub
		userMapper.confirmEmail(email);
	}

	@Override
	public UserVO findById(String email) {
		// TODO Auto-generated method stub
		return userMapper.findById(email);
	}

	@Override
	public void updatePassword(UserVO user) {
		// TODO Auto-generated method stub
		// user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setPassword((user.getPassword()));
		userMapper.updatePassword(user);

	}

	@Override
	public void changePassword(String email, String name, String curPwd, String newPwd) throws Exception {

		List<UserVO> check = userMapper.checkPassword(email, curPwd);
		if (check == null) {
			throw new InvalidPasswordException();
		} else {
			userMapper.changePassword(email, name, newPwd);
		}

	}

	@Override
	public void deleteMember(String email) throws Exception {
		userMapper.deleteMember(email);
	}
}
package org.zerock.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.UserVO;
import org.zerock.dto.LoginDTO;

public interface UserMapper {

	UserVO login(LoginDTO dto) throws Exception;

	void keepLogin(@Param("email") String email, @Param("sessionId") String sessionId, @Param("next") Date next)
			throws Exception;

	UserVO checkUserWithSessionKey(String value);

	public void create(UserVO userVO) throws Exception;

	public UserVO read(String email) throws Exception;

	public List<UserVO> listPage(int page) throws Exception;

	public List<UserVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	public void update(UserVO vo) throws Exception;

	UserVO kakaoLogin(UserVO userVO) throws Exception;

	public void confirmEmail(String email);

	public UserVO findById(String email);

	public void updatePassword(UserVO user);

	public void changePassword(@Param("email") String email, @Param("name") String name,
			@Param("password") String password) throws Exception;

	public List<UserVO> checkPassword(@Param("email") String email, @Param("password") String password)
			throws Exception;

	public void deleteMember(String email) throws Exception;

}

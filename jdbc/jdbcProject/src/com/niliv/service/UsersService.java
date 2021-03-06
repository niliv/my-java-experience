package com.niliv.service;

import java.util.List;

import com.niliv.pojo.Users;

public interface UsersService {
	/**
	 * 批量插入数据
	 * @param users
	 * @return
	 */
	public int[] insertUsersBatch(int count,int maxS,int nameLength,String startDate,String endDate);
	/**
	 * 根据ID删除用户
	 * @param userid
	 * @return
	 */
	public int dropUsers(String usersid);
	/**
	 * 更新用户
	 * @param users
	 * @return
	 */
	public int updateUsers(Users users);
	/**
	 * 根据月份查出用户
	 * @param month
	 * @return
	 */
	public List<Users> queryByMonth(String month);
	/**
	 * 根据ID查出用户
	 * @param userid
	 * @return
	 */
	public List<Users> queryById(String userid);
	/**
	 * 根据积分查出用户
	 * @param score
	 * @return
	 */
	public List<Users> queryByScore(int score);
}

package com.cn.yantu.dao;


import org.springframework.stereotype.Repository;

import com.cn.yantu.domain.User;
/**
 * 面向接口编程
 * @author luliang
 *
 */
//@Repository("userDao")
public interface IUserDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    User selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_t
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(User record);

	User selectUserByUsernameAnaPassword(User u);
}
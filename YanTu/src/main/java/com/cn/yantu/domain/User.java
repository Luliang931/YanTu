package com.cn.yantu.domain;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3741194481705704426L;
	
	private Integer id;			// id
	
	@NotBlank(message="用户名不能为空！")
	private String username;	// 用户名
	
	@NotBlank(message="密码不能为空！")
	@Length(min=6,max=12,message="密码长度为6-12位之间！")
	private String password;	// 密码
	
	@NotBlank(message="手机号码不能为空！")
	@Pattern(regexp="^1[0-9]{10}$",message="无效的电话号码！")
	private String phone;		// 电话
	
	@NotBlank(message="QQ号码不能为空！")
	private String qq;			//qq
	private String weixin;		//微信
	
	@Email(message="邮箱格式不正确！")
	private String email;		//邮箱
	
	@NotBlank(message="请选择性别！")
	private String sex;			//性别
	
	private Integer tuMoney;	//兔币（保留字段）
	
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime = new Date();	//账号创建时间
	
	@NotBlank(message="报考学校不能为空！")
	private String university;  //报考学校
	
	@NotBlank(message="报考学院不能为空！")
	private String toSchool;	//报考学院
	
	@AssertTrue(message="请同意研兔网所有条款！")
	private Boolean item;		//同意条款
	
	public User() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getToSchool() {
		return toSchool;
	}

	public void setToSchool(String toSchool) {
		this.toSchool = toSchool;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getTuMoney() {
		return tuMoney;
	}

	public void setTuMoney(Integer tuMoney) {
		this.tuMoney = tuMoney;
	}


	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Boolean getItem() {
		return item;
	}

	public void setItem(Boolean item) {
		this.item = item;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", phone=" + phone + ", qq="
				+ qq + ", weixin=" + weixin + ", email=" + email + ", sex=" + sex + ", tuMoney=" + tuMoney
				+ ", createTime=" + createTime + ", university=" + university + ", toSchool=" + toSchool + ", item="
				+ item + "]";
	}

	
	
}

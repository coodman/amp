package com.coodman.amp.beans.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * <b>角色信息实体类</b>
 * @author Coodman
 * @version 1.0 2019-05-08
 * @since 2019-05-08
 */
public class Role implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long roleId;						// 角色主键
	private String roleName;					// 角色名称
	private Date createDate;					// 创建时间
	private Date updateDate;					// 修改时间
	
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}

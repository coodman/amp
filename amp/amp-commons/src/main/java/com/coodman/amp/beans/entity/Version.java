package com.coodman.amp.beans.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * <b>APP版本信息实体类</b>
 * @author Coodman
 * @version 1.0 2019-05-08
 * @since 2019-05-08
 */
public class Version implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long versionId;						// 主键
	private AppInfo appInfo;					// app信息
	private String apkName;						// 程序名称
	private String supportRom;					// 支持硬件
	private Double softwareSize;				// 安装包大小
	private String downloadLink;				// 下载地址
	private Dictionary examine;					// 审核状态
	private Dictionary status;					// app状态
	private Admin checker;						// 审核人
	private Date createDate;					// 创建时间
	private Date updateDate;					// 修改时间
	
	public Long getVersionId() {
		return versionId;
	}
	public void setVersionId(Long versionId) {
		this.versionId = versionId;
	}
	public AppInfo getAppInfo() {
		return appInfo;
	}
	public void setAppInfo(AppInfo appInfo) {
		this.appInfo = appInfo;
	}
	public String getApkName() {
		return apkName;
	}
	public void setApkName(String apkName) {
		this.apkName = apkName;
	}
	public String getSupportRom() {
		return supportRom;
	}
	public void setSupportRom(String supportRom) {
		this.supportRom = supportRom;
	}
	public Double getSoftwareSize() {
		return softwareSize;
	}
	public void setSoftwareSize(Double softwareSize) {
		this.softwareSize = softwareSize;
	}
	public String getDownloadLink() {
		return downloadLink;
	}
	public void setDownloadLink(String downloadLink) {
		this.downloadLink = downloadLink;
	}
	public Dictionary getExamine() {
		return examine;
	}
	public void setExamine(Dictionary examine) {
		this.examine = examine;
	}
	public Dictionary getStatus() {
		return status;
	}
	public void setStatus(Dictionary status) {
		this.status = status;
	}
	public Admin getChecker() {
		return checker;
	}
	public void setChecker(Admin checker) {
		this.checker = checker;
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

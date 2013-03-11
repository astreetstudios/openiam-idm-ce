package org.openiam.idm.srvc.recon.dto;

import java.util.List;
import java.util.Set;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

import org.openiam.idm.srvc.user.domain.UserWrapperEntity;

// Generated May 29, 2010 8:20:09 PM by Hibernate Tools 3.2.2.GA

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ReconciliationConfig", propOrder = { "reconConfigId",
		"resourceId", "frequency", "status", "situationSet", "reportPath",
		"separator", "endOfLine","userList" })
public class ReconciliationConfig implements java.io.Serializable {

	private static final long serialVersionUID = 431603790346613674L;
	private String reconConfigId;
	private String resourceId;
	private String frequency;
	private String status;
	private String separator;
	private String endOfLine;
	
	//Not saved in DB
	private String reportPath;

	private List<UserWrapperEntity> userList;

	public String getSeparator() {
		return separator;
	}

	public void setSeparator(String separator) {
		this.separator = separator;
	}

	public String getEndOfLine() {
		return endOfLine;
	}

	public void setEndOfLine(String endOfLine) {
		this.endOfLine = endOfLine;
	}

	private Set<ReconciliationSituation> situationSet;

	public ReconciliationConfig() {
	}

	public ReconciliationConfig(String reconConfigId) {
		this.reconConfigId = reconConfigId;
	}

	public ReconciliationConfig(String reconConfigId, String resourceId,
			String mode, String frequency, String status,
			Integer attributeLevelCheck, Integer updateChangedAttribute) {
		this.reconConfigId = reconConfigId;
		this.resourceId = resourceId;
		this.frequency = frequency;
		this.status = status;

	}

	public String getReconConfigId() {
		return this.reconConfigId;
	}

	public void setReconConfigId(String reconConfigId) {
		this.reconConfigId = reconConfigId;
	}

	public String getResourceId() {
		return this.resourceId;
	}

	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}

	public String getFrequency() {
		return this.frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Set<ReconciliationSituation> getSituationSet() {
		return situationSet;
	}

	public void setSituationSet(Set<ReconciliationSituation> situationSet) {
		this.situationSet = situationSet;
	}

	public String getReportPath() {
		return reportPath;
	}

	public void setReportPath(String reportPath) {
		this.reportPath = reportPath;
	}

	public List<UserWrapperEntity> getUserList() {
		return userList;
	}

	public void setUserList(List<UserWrapperEntity> userList) {
		this.userList = userList;
	}
}

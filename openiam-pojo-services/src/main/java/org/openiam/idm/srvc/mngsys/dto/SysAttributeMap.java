package org.openiam.idm.srvc.mngsys.dto;

// Generated Nov 3, 2008 12:14:43 AM by Hibernate Tools 3.2.2.GA

import java.util.Date;

/**
 * SysAttributeMap represents the mapping between an attribute in the target system and
 * an attribute policy.
 */
public class SysAttributeMap implements java.io.Serializable {

	private String attributeMapId;
	private String managedSysId;
	private String objectGroup;
	private String targetAttributeName;
	/* Metadata Element Id for the attribute name */
	private String targetAttrElementId;
	private boolean authoritativeSrc;
	private String ruleSource;
	private String rule;
	private String status;
	private Date startDate;
	private Date endDate;

	public SysAttributeMap() {
	}

	public SysAttributeMap(String attributeMapId, String managedSys) {
		this.attributeMapId = attributeMapId;
		this.managedSysId = managedSys;
	}

	public SysAttributeMap(String attributeMapId, String managedSys,
			String objectGroup, String targetAttributeName,
			boolean authoritativeSrc, String ruleSource, String rule,
			String status, Date startDate, Date endDate) {
		this.attributeMapId = attributeMapId;
		this.managedSysId = managedSys;
		this.objectGroup = objectGroup;
		this.targetAttributeName = targetAttributeName;
		this.authoritativeSrc = authoritativeSrc;
		this.ruleSource = ruleSource;
		this.rule = rule;
		this.status = status;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public String getAttributeMapId() {
		return this.attributeMapId;
	}

	public void setAttributeMapId(String attributeMapId) {
		this.attributeMapId = attributeMapId;
	}



	public String getObjectGroup() {
		return this.objectGroup;
	}

	public void setObjectGroup(String objectGroup) {
		this.objectGroup = objectGroup;
	}

	public String getTargetAttributeName() {
		return this.targetAttributeName;
	}

	public void setTargetAttributeName(String targetAttributeName) {
		this.targetAttributeName = targetAttributeName;
	}



	public String getRuleSource() {
		return this.ruleSource;
	}

	public void setRuleSource(String ruleSource) {
		this.ruleSource = ruleSource;
	}

	public String getRule() {
		return this.rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getManagedSysId() {
		return managedSysId;
	}

	public void setManagedSysId(String managedSysId) {
		this.managedSysId = managedSysId;
	}

	public boolean isAuthoritativeSrc() {
		return authoritativeSrc;
	}

	public void setAuthoritativeSrc(boolean authoritativeSrc) {
		this.authoritativeSrc = authoritativeSrc;
	}
	
	/**
	 *  Returns a Metadata Element Id for the attribute name
	 * @return
	 */
	public String getTargetAttrElementId() {
		return targetAttrElementId;
	}

	/**
	 * Sets Metadata Element Id for the attribute name
	 * @param targetAttrElementId
	 */
	public void setTargetAttrElementId(String targetAttrElementId) {
		this.targetAttrElementId = targetAttrElementId;
	}

}

package com.bm.model;

/**
 * BugTarget entity. @author MyEclipse Persistence Tools
 */

public class BugTarget implements java.io.Serializable {

	// Fields

	private Integer bugTargetId;
	private String bugTargetName;

	// Constructors

	/** default constructor */
	public BugTarget() {
	}

	/** full constructor */
	public BugTarget(String bugTargetName) {
		this.bugTargetName = bugTargetName;
	}

	// Property accessors

	public Integer getBugTargetId() {
		return this.bugTargetId;
	}

	public void setBugTargetId(Integer bugTargetId) {
		this.bugTargetId = bugTargetId;
	}

	public String getBugTargetName() {
		return this.bugTargetName;
	}

	public void setBugTargetName(String bugTargetName) {
		this.bugTargetName = bugTargetName;
	}

}
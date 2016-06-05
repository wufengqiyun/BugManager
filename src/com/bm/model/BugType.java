package com.bm.model;

/**
 * BugType entity. @author MyEclipse Persistence Tools
 */

public class BugType implements java.io.Serializable {

	// Fields

	private Integer bugTypeId;
	private String bugTypeName;

	// Constructors

	/** default constructor */
	public BugType() {
	}

	/** full constructor */
	public BugType(String bugTypeName) {
		this.bugTypeName = bugTypeName;
	}

	// Property accessors

	public Integer getBugTypeId() {
		return this.bugTypeId;
	}

	public void setBugTypeId(Integer bugTypeId) {
		this.bugTypeId = bugTypeId;
	}

	public String getBugTypeName() {
		return this.bugTypeName;
	}

	public void setBugTypeName(String bugTypeName) {
		this.bugTypeName = bugTypeName;
	}

}
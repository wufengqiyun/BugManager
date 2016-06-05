package com.bm.model;

/**
 * BugInfo entity. @author MyEclipse Persistence Tools
 */

public class BugInfo implements java.io.Serializable {

	// Fields

	private Integer bugId;
	private String bugFinder;
	private String bugTime;
	private String bugName;
	private String bugFrom;
	private String bugFromv;
	private String bugLevel;
	private String bugType;
	private String bugDesc;

	// Constructors

	/** default constructor */
	public BugInfo() {
	}

	/** minimal constructor */
	public BugInfo(String bugFrom) {
		this.bugFrom = bugFrom;
	}

	/** full constructor */
	public BugInfo(String bugFinder, String bugTime, String bugName,
			String bugFrom, String bugFromv, String bugLevel, String bugType,
			String bugDesc) {
		this.bugFinder = bugFinder;
		this.bugTime = bugTime;
		this.bugName = bugName;
		this.bugFrom = bugFrom;
		this.bugFromv = bugFromv;
		this.bugLevel = bugLevel;
		this.bugType = bugType;
		this.bugDesc = bugDesc;
	}

	// Property accessors

	public Integer getBugId() {
		return this.bugId;
	}

	public void setBugId(Integer bugId) {
		this.bugId = bugId;
	}

	public String getBugFinder() {
		return this.bugFinder;
	}

	public void setBugFinder(String bugFinder) {
		this.bugFinder = bugFinder;
	}

	public String getBugTime() {
		return this.bugTime;
	}

	public void setBugTime(String bugTime) {
		this.bugTime = bugTime;
	}

	public String getBugName() {
		return this.bugName;
	}

	public void setBugName(String bugName) {
		this.bugName = bugName;
	}

	public String getBugFrom() {
		return this.bugFrom;
	}

	public void setBugFrom(String bugFrom) {
		this.bugFrom = bugFrom;
	}

	public String getBugFromv() {
		return this.bugFromv;
	}

	public void setBugFromv(String bugFromv) {
		this.bugFromv = bugFromv;
	}

	public String getBugLevel() {
		return this.bugLevel;
	}

	public void setBugLevel(String bugLevel) {
		this.bugLevel = bugLevel;
	}

	public String getBugType() {
		return this.bugType;
	}

	public void setBugType(String bugType) {
		this.bugType = bugType;
	}

	public String getBugDesc() {
		return this.bugDesc;
	}

	public void setBugDesc(String bugDesc) {
		this.bugDesc = bugDesc;
	}

}
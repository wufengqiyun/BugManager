package com.bm.model;

/**
 * SoftwareInfo entity. @author MyEclipse Persistence Tools
 */

public class SoftwareInfo implements java.io.Serializable {

	// Fields

	private Integer softwareId;
	private String softwareName;
	private String softwareVersion;
	private String softwareDesc;

	// Constructors

	/** default constructor */
	public SoftwareInfo() {
	}

	/** full constructor */
	public SoftwareInfo(String softwareName, String softwareVersion,
			String softwareDesc) {
		this.softwareName = softwareName;
		this.softwareVersion = softwareVersion;
		this.softwareDesc = softwareDesc;
	}

	// Property accessors

	public Integer getSoftwareId() {
		return this.softwareId;
	}

	public void setSoftwareId(Integer softwareId) {
		this.softwareId = softwareId;
	}

	public String getSoftwareName() {
		return this.softwareName;
	}

	public void setSoftwareName(String softwareName) {
		this.softwareName = softwareName;
	}

	public String getSoftwareVersion() {
		return this.softwareVersion;
	}

	public void setSoftwareVersion(String softwareVersion) {
		this.softwareVersion = softwareVersion;
	}

	public String getSoftwareDesc() {
		return this.softwareDesc;
	}

	public void setSoftwareDesc(String softwareDesc) {
		this.softwareDesc = softwareDesc;
	}

}
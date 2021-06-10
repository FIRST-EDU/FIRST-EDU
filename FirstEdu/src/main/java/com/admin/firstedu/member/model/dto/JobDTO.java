package com.admin.firstedu.member.model.dto;

import java.io.Serializable;

public class JobDTO implements Serializable {
	

	private static final long serialVersionUID = 1L;
	
	private String jobCode;
	private String jobName;
	
	public JobDTO() {
	}

	public JobDTO(String jobCode, String jobName) {
		super();
		this.jobCode = jobCode;
		this.jobName = jobName;
	}

	public String getJobCode() {
		return jobCode;
	}

	public void setJobCode(String jobCode) {
		this.jobCode = jobCode;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "JobDTO [jobCode=" + jobCode + ", jobName=" + jobName + "]";
	}
	
}

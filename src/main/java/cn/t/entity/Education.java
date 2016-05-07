package cn.t.entity;

import java.util.Date;

public class Education {
    private Integer eduinfoid;

    private Integer userid;

    private Date sdate;

    private Date edate;

    private String school;

    private String major;

    private String degree;

    private String edutype;

    private String desc;

    public Integer getEduinfoid() {
        return eduinfoid;
    }

    public void setEduinfoid(Integer eduinfoid) {
        this.eduinfoid = eduinfoid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getSdate() {
        return sdate;
    }

    public void setSdate(Date sdate) {
        this.sdate = sdate;
    }

    public Date getEdate() {
        return edate;
    }

    public void setEdate(Date edate) {
        this.edate = edate;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public String getEdutype() {
        return edutype;
    }

    public void setEdutype(String edutype) {
        this.edutype = edutype == null ? null : edutype.trim();
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc == null ? null : desc.trim();
    }
}
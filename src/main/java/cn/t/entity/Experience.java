package cn.t.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Experience {
    private Integer expinfoid;

    private Integer userid;

    @DateTimeFormat(pattern="yyyy-MM-dd")  
    private Date sdate;

    @DateTimeFormat(pattern="yyyy-MM-dd")  
    private Date edate;

    private String company;

    private String industry;

    private String dept;

    private String position;

    private String desp;

    public Integer getExpinfoid() {
        return expinfoid;
    }

    public void setExpinfoid(Integer expinfoid) {
        this.expinfoid = expinfoid;
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

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getdesp() {
        return desp;
    }

    public void setdesp(String desp) {
        this.desp = desp == null ? null : desp.trim();
    }
}
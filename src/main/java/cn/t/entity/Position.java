package cn.t.entity;

import java.util.Date;

public class Position {
    private String posnum;

    private String posname;

    private String company;

    private String dept;

    private String place;

    private String num;

    private Date endtime;

    private String posdesc;

    private String posreq;

    public String getPosnum() {
        return posnum;
    }

    public void setPosnum(String posnum) {
        this.posnum = posnum == null ? null : posnum.trim();
    }

    public String getPosname() {
        return posname;
    }

    public void setPosname(String posname) {
        this.posname = posname == null ? null : posname.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getPosdesc() {
        return posdesc;
    }

    public void setPosdesc(String posdesc) {
        this.posdesc = posdesc == null ? null : posdesc.trim();
    }

    public String getPosreq() {
        return posreq;
    }

    public void setPosreq(String posreq) {
        this.posreq = posreq == null ? null : posreq.trim();
    }
}
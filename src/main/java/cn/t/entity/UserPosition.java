package cn.t.entity;

public class UserPosition {
    private Integer jobappid;

    private Integer userid;

    private String posnum;

    private String status;

    public Integer getJobappid() {
        return jobappid;
    }

    public void setJobappid(Integer jobappid) {
        this.jobappid = jobappid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getPosnum() {
        return posnum;
    }

    public void setPosnum(String posnum) {
        this.posnum = posnum == null ? null : posnum.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}
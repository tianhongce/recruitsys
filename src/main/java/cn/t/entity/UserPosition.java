package cn.t.entity;

public class UserPosition {
    private Integer jobappid;

    private String useremail;

    private String posnum;

    private String status;

    public Integer getJobappid() {
        return jobappid;
    }

    public void setJobappid(Integer jobappid) {
        this.jobappid = jobappid;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
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
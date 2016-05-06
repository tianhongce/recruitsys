package cn.t.entity;

import java.util.Date;

public class Resume {
    private Integer resumeid;

    private String useremail;

    private String fullname;

    private String sex;

    private String tall;

    private Date birthday;

    private String province;

    private String politicalstatus;

    private String maritalstatus;

    private String idcardnum;

    private String expricesyears;

    private String nowposition;

    private String wishmonthsalary;

    private String address;

    private String postcode;

    private String phone;

    public Integer getResumeid() {
        return resumeid;
    }

    public void setResumeid(Integer resumeid) {
        this.resumeid = resumeid;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname == null ? null : fullname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getTall() {
        return tall;
    }

    public void setTall(String tall) {
        this.tall = tall == null ? null : tall.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getPoliticalstatus() {
        return politicalstatus;
    }

    public void setPoliticalstatus(String politicalstatus) {
        this.politicalstatus = politicalstatus == null ? null : politicalstatus.trim();
    }

    public String getMaritalstatus() {
        return maritalstatus;
    }

    public void setMaritalstatus(String maritalstatus) {
        this.maritalstatus = maritalstatus == null ? null : maritalstatus.trim();
    }

    public String getIdcardnum() {
        return idcardnum;
    }

    public void setIdcardnum(String idcardnum) {
        this.idcardnum = idcardnum == null ? null : idcardnum.trim();
    }

    public String getExpricesyears() {
        return expricesyears;
    }

    public void setExpricesyears(String expricesyears) {
        this.expricesyears = expricesyears == null ? null : expricesyears.trim();
    }

    public String getNowposition() {
        return nowposition;
    }

    public void setNowposition(String nowposition) {
        this.nowposition = nowposition == null ? null : nowposition.trim();
    }

    public String getWishmonthsalary() {
        return wishmonthsalary;
    }

    public void setWishmonthsalary(String wishmonthsalary) {
        this.wishmonthsalary = wishmonthsalary == null ? null : wishmonthsalary.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}
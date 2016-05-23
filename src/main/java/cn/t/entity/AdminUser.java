package cn.t.entity;

public class AdminUser {
    private String auserid;

    private String ausername;

    private String auserpwd;

    private String adept;

    private String acompany;

    private String apow;

    public String getAuserid() {
        return auserid;
    }

    public void setAuserid(String auserid) {
        this.auserid = auserid == null ? null : auserid.trim();
    }

    public String getAusername() {
        return ausername;
    }

    public void setAusername(String ausername) {
        this.ausername = ausername == null ? null : ausername.trim();
    }

    public String getAuserpwd() {
        return auserpwd;
    }

    public void setAuserpwd(String auserpwd) {
        this.auserpwd = auserpwd == null ? null : auserpwd.trim();
    }

    public String getAdept() {
        return adept;
    }

    public void setAdept(String adept) {
        this.adept = adept == null ? null : adept.trim();
    }

    public String getAcompany() {
        return acompany;
    }

    public void setAcompany(String acompany) {
        this.acompany = acompany == null ? null : acompany.trim();
    }

    public String getApow() {
        return apow;
    }

    public void setApow(String apow) {
        this.apow = apow == null ? null : apow.trim();
    }
}
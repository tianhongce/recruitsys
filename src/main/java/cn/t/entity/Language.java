package cn.t.entity;

public class Language {
    private Integer langinfoid;

    private Integer userid;

    private String lang;

    private String degree;

    private String subject;

    private String grade;

    public Integer getLanginfoid() {
        return langinfoid;
    }

    public void setLanginfoid(Integer langinfoid) {
        this.langinfoid = langinfoid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang == null ? null : lang.trim();
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject == null ? null : subject.trim();
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade == null ? null : grade.trim();
    }
}
package cn.t.entity;

public class Evaluation {
    private Integer evainfoid;

    private Integer userid;

    private String evaluation;

    public Integer getEvainfoid() {
        return evainfoid;
    }

    public void setEvainfoid(Integer evainfoid) {
        this.evainfoid = evainfoid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation == null ? null : evaluation.trim();
    }
}
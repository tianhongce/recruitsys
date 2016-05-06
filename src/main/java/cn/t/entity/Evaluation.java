package cn.t.entity;

public class Evaluation {
    private Integer evainfoid;

    private String useremail;

    private String evaluation;

    public Integer getEvainfoid() {
        return evainfoid;
    }

    public void setEvainfoid(Integer evainfoid) {
        this.evainfoid = evainfoid;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation == null ? null : evaluation.trim();
    }
}
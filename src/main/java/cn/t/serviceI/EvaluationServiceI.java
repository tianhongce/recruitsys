package cn.t.serviceI;

import java.util.List;

import cn.t.entity.Evaluation;

public interface EvaluationServiceI {
	public int addEvaluation(Evaluation eva);
	public int delEvaluation(Integer evaid);
	public int editEvaluation(Evaluation eva);
	public List<Evaluation> getEvaluationByUserid(Integer userid);

}

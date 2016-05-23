package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.EvaluationMapper;
import cn.t.entity.Evaluation;
import cn.t.serviceI.EvaluationServiceI;

@Service("EvaluationService")
public class EvaluationServiceImpl implements EvaluationServiceI {

	public EvaluationMapper evamapper;
	
	
	public EvaluationMapper getEvamapper() {
		return evamapper;
	}
	@Autowired
	public void setEvamapper(EvaluationMapper evamapper) {
		this.evamapper = evamapper;
	}

	@Override
	public int addEvaluation(Evaluation eva) {
		return evamapper.insertSelective(eva);
	}

	@Override
	public int delEvaluation(Integer evaid) {
		return evamapper.deleteByPrimaryKey(evaid);
	}

	@Override
	public int editEvaluation(Evaluation eva) {
		return evamapper.updateByPrimaryKeySelective(eva);
	}

	@Override
	public List<Evaluation> getEvaluationByUserid(Integer userid) {
		return evamapper.selectByUserid(userid);
	}

}

package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.LanguageMapper;
import cn.t.entity.Language;
import cn.t.serviceI.LanguageServiceI;

@Service("LanguageService")
public class LanguageServiceImpl implements LanguageServiceI{

	public LanguageMapper langmapper;
	
	
	public LanguageMapper getLangmapper() {
		return langmapper;
	}
	@Autowired
	public void setLangmapper(LanguageMapper langmapper) {
		this.langmapper = langmapper;
	}

	@Override
	public int addLanguage(Language lang) {
		return langmapper.insertSelective(lang);
	}

	@Override
	public int delLanguage(Integer langid) {
		return langmapper.deleteByPrimaryKey(langid);
	}

	@Override
	public int editLanguage(Language lang) {
		return langmapper.updateByPrimaryKeySelective(lang);
	}

	@Override
	public List<Language> getLanguage(Integer userid) {
		return langmapper.selectByUserid(userid);
	}

}

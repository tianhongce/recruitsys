package cn.t.serviceI;

import java.util.List;

import cn.t.entity.Language;

public interface LanguageServiceI {
	public int addLanguage(Language lang);
	public int delLanguage(Integer langid);
	public int editLanguage(Language lang);
	public List<Language> getLanguage(Integer userid);

}

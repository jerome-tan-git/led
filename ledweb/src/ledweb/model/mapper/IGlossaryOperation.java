package ledweb.model.mapper;

import ledweb.model.Glossary;

public interface IGlossaryOperation {
	
	public Glossary selectGlossary();
	public int addGlossary(Glossary glossary);
	public int updateGlossary(Glossary glossary);
	public int deleteGlossary(int id);

}

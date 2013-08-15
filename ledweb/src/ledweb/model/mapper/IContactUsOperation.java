package ledweb.model.mapper;

import ledweb.model.ContactUs;

public interface IContactUsOperation {
	
	public ContactUs selectContactUs();
	public int addContactUs(ContactUs contactUs);
	public int updateContactUs(ContactUs contactUs);
	public int deleteContactUs(int id);

}

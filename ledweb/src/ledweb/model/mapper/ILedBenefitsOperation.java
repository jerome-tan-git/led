package ledweb.model.mapper;

import ledweb.model.LEDbenefits;

public interface ILedBenefitsOperation {

	public LEDbenefits selectLEDbenefitsByID();
	public int addLEDbenefits(LEDbenefits benefits);
	public int updateLEDbenefits(LEDbenefits benefits);
	public int deleteLEDbenefits(int id);
	
}

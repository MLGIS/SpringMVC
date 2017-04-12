package tagPlus;

import javax.annotation.PostConstruct;

public interface IBasicTag {

	@PostConstruct
	public void init() throws Exception;
}

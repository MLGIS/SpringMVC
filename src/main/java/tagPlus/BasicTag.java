package tagPlus;

import java.io.IOException;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ApplicationObjectSupport;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

public abstract class BasicTag extends ApplicationObjectSupport implements TemplateDirectiveModel,IBasicTag{

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;
	
	//@PostConstruct用来标注在servlet启动时执行类对象实力执行相关操作（本类的init函数)
	@PostConstruct
	public void init() throws TemplateModelException {
		// TODO Auto-generated method stub
		String className=this.getClass().getName().substring(this.getClass().getName().lastIndexOf('.')+1);
		
		String beanName=StringUtils.uncapitalize(className);
		//将自定义tag的类自动添加到servlet的配置文件中
		freeMarkerConfigurer.getConfiguration().setSharedVariable(className,this.getApplicationContext().getBean(beanName));
	}

}

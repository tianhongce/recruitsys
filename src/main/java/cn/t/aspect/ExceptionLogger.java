package cn.t.aspect;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
@Aspect
public class ExceptionLogger {
	@Around("within(cn.rest..*)")
	public Object log(ProceedingJoinPoint p) throws Throwable {
		Object result = null;
		try {
			result = p.proceed(); // 调用目标组件
		} catch (Throwable e) {
			// e.printStackTrace();
			// log4j
			Logger logger = Logger.getLogger(this.getClass());
			ServletRequestAttributes sr = (ServletRequestAttributes) RequestContextHolder
					.getRequestAttributes();
			HttpServletRequest request = sr.getRequest();
			String ip = request.getRemoteHost();
			String now = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(new Date());
			String className = p.getTarget().getClass().getName();
			String methodName = p.getSignature().getName();
			logger.error("IP[" + ip + "],");
			logger.error("在[" + now + "],");
			logger.error("调用[" + className + "." + methodName + "]时,发生如下异常:");
			logger.error("    [" + e.toString() + "]");
			StackTraceElement[] elems = e.getStackTrace();
			for (StackTraceElement elem : elems) {
				logger.error("    " + elem.toString());
			}
			throw e;
		}
		return result;
	}
}
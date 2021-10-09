public aspect TraceAspectLentsch {
	pointcut classToTrace(): within(*App);
	
	pointcut getNamePointcut(): execution(String getName());
	
	before(): getNamePointcut() {
		// method sig
		// method line number
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() + ", " + 
				thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): getNamePointcut() {
		// method filename
		System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}

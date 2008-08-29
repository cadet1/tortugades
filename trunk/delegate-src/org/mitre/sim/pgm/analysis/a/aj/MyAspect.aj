package org.mitre.sim.pgm.analysis.a.aj;
import org.aspectj.lang.*;
public aspect MyAspect {

	pointcut doers():
		call (void org.mitre.sim.pgm.analysis.a.j.TryAnAspect.do*(..));
		
	before() : doers() {
		System.out.println("In aspect.");
	}
}

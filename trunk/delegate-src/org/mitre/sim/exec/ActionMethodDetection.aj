package org.mitre.sim.exec;
import org.mitre.sim.Entity;
import org.aspectj.lang.*;

public aspect ActionMethodDetection {

  pointcut action(LogicalProcess lp):
    (call(void LogicalProcess+.action*(..)) ||
     call(  *  LogicalProcess+.action*(..))) &&
    !call(void Entity+.actionMethodNotifier(String)) &&
    target(lp);

  after(LogicalProcess lp) : action(lp) {
    Signature signature = thisJoinPointStaticPart.getSignature();
    //System.out.println("after " + signature.getName());
    lp.getExec().actionMethodInvoked(lp, signature.getName());
  }

}

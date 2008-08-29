package org.mitre.sim.exec;

import org.mitre.sim.Simulation;

public aspect AppendAspectVersion {

  pointcut systemVersion() :
    call(String Simulation.version());

  String around(): systemVersion() {
    Package lang = org.aspectj.lang.JoinPoint.class.getPackage();
    String version = lang.getImplementationVersion();
    if (version == null)
      version = "[assuming 1.2.1]";
    return proceed() + ", AspectJ "+version;
  }

}

package org.mitre.sim.exec;

import org.mitre.sim.Entity;

public aspect ServiceUsageAdvisory {
/*
  pointcut timeServices():
    (call(* Entity+.waitForTime(..))   ||
     call(* Entity+.waitForAction(..)) ||
     call(* Entity+.waitForActionOrTrigger(..)));

  pointcut timeOutsideAgenda():
    timeServices() &&
    !call(* Entity.waitForActionOrTrigger(..)) &&
    !withincode(void Entity+.agenda());

  declare error: timeOutsideAgenda():
    "Time management services may only be called from the Entity.agenda() method.";
*/
}

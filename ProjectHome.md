# Welcome to Tortuga #

Tortuga is a software framework for discrete-event simulation in Java.  A Tortuga simulation can be written either as interacting processes or as scheduled events.  A Tortuga simulation can have thousands of entities, and can be part of a larger Java system.

Tortuga was developed by The MITRE Corporation in 2004/2006.

# Why Tortuga #

Tortuga utilizes a programming paradigm that greatly reduces the burden on the simulation on developer.  Tortuga treats each simulation entity as a separate thread and allows you to provide a run method.  This allows the developer to focus on simulation specifics and not have to worry about littering event handler code all over the place.

Additionally, Tortuga is well-documented, well-tested, and has held up to use in some extremely hardcore simulations.

# What You Need to Get Started #
  * Your simulation, as a set of Java classes.  There are simple examples in the introduction (.html files in the source).  The example source code is available from the downloads section or the code repository.  There are more advanced examples: the Sushi Restaurant and MVS models.
  * A Java development kit.  The Sun JDK or IBM JDK will support Tortuga models up to several thousand interacting processes, on any platform supported by the JDK.  The current release of Tortuga has been tested with Sun and IBM versions 1.4.2 and higher.
  * Ant, the open-source Java-based build too.  The current release of Tortuga has been tested with Ant version 1.6.2 and higher.  Ant is supported by eclipse.
  * The Tortuga software, available from the downloads section or the source repository.

# Developing Your Simulation with Tortuga #
As part of its support for simulation, Tortuga employs tools from aspect-oriented programming, or AOP. You need not be familiar with AOP to use Tortuga: your simulation classes are written in standard Java. However, the use of AOP in Tortuga requires more elaborate compilation that mere javac. This has been wrapped up in an Ant task included in delegate.jar (Ant task is called "tortuga", not "delegate"). This task is the reason we assume you are using Ant to build your simulation.

Ensure you have a JDK and Ant installed. Call the directory that contains your simulation example\_home. Use the sample Ant script in the source tree; download it and put it in example\_home. The example script assumes
  * your source files are under src in example\_home
  * your class files will go under classes in example\_home
  * you have placed delegate.jar under lib in example\_home

The script contains clean, build, and run targets.  Modify the script to run your main simulation class, and run it like any Ant script.

# Executing Your Simulation #
Once you have compiled your simulation with the Tortuga Ant task, you can execute it like any Java program. The Tortuga library (delegate.jar) must be included on the class path. Nothing else is required. You can use the VM command java at the command line, or you can use the java Ant task.

# Tortuga and Eclipse #
Many Java developers find an integrated development environment like Eclipse helpful. Tortuga simulations can be developed using Eclipse. Although Tortuga employs aspects, as mentioned above, they do not appear in user's code. Eclipse need not be aware of them. What is required is that your code be built by the Tortuga Ant task. Thus to use Tortuga with Eclipse, you should create an Ant script to build your code with the Tortuga task, and have Eclipse use Ant when it builds your code.

Eclipse makes it convenient to use Ant. Ensure your build script appears in the Package Explorer. Right-click on it and choose "Run" from the pop-up menu. Ant will be invoked with your script.

One of the most powerful features of Eclipse is its debugger. When Eclipse runs an Ant script, it runs the script by default in a separate VM, thus making it impossible to use the debugger. One way around this is to create a run profile for the script. The profile should execute org.apache.tools.ant.Main, with your script supplied as a program argument, like -f myscript.xml.

The current Tortuga release has been tested with Eclipse 3.0.2. This version of Eclipse works without the aspect plugin, AJDT. It also works with version 1.2.0 of the plugin.


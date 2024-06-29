# Define Java compiler
JAVAC = javac

# Define Java runtime
JAVA = java

# List of Java source files
SOURCES = Color.java Main.java

# Define the default target
all: $(SOURCES:.java=.class)

# Rule to compile .java files to .class files
%.class: %.java
	$(JAVAC) $<

# Rule to run the Main class
run: $(SOURCES:.java=.class)
	$(JAVA) Main

# Clean up compiled files
clean:
	rm -f *.class

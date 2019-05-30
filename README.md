# Make Tutorial 


## How to write make file 

In simple words it can be remembered as defining target along with dependencies in the 1st line and associated action in the 2nd line. Make file can have several such target and actions. 

##  target: dependencies
##	action 	


##  Syntax : 
### [name of rule] : [list of other rules, separated by spaces] [list of source files, separated by spaces]
### 		[TAB]command to execute in the event that the rule is violated.


##   Rule 1 
###  Rule Name - output 
###  List of other rules - main.o and printer.o 
###  command to execute - g++ main.o printer.o -o output
###  Notice that other rules namely main.o and printer.o is to be defined later. 
###  It links the object files (.o) files into an executable (output)

output: main.o printer.o
	g++ main.o printer.o -o output ## main.o and printer.o are declared later


##   Rule 2
###  Rule Name - main.o 
###  List of source files - main.cpp 
###  command to execute - g++ -c main.cpp
###  Compiles main.cpp to main.o 


main.o: main.cpp
	g++ -c main.cpp  ## -c creates the output file by same name and replace .cpp with .o 


##   Rule 3
###  Rule Name - printer.o 
###  List of source files - printer.cpp printer.h
###  command to execute - g++ -c printer.cpp
###  Compiles printer.cpp to printer.o 

printer.o: printer.cpp printer.h 
	g++ -c printer.cpp ## -c creates the output file by same name and replace .cpp with .o 


##   Rule 4
###  Rule Name - run
###  List of source files -
###  command to execute - ./output

run: 
	./output

##   Rule 5
###  Rule Name - clean 
###  List of other rules or source files - 
###  Command to execute - rm all o files and output
###  It removes all the generated files 


## clean: 
	rm *.o output 

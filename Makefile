
## [name of rule] : [list of other rules, separated by spaces] [list of source files, separated by spaces]
## 		[TAB]command to execute in the event that the rule is violated.


output: main.o printer.o
	g++ main.o printer.o -o output ## main.o and printer.o are declared later

main.o: main.cpp
	g++ -c main.cpp  ## -c creates the output file by same name and replace .cpp with .o 

printer.o: printer.cpp printer.h 
	g++ -c printer.cpp ## -c creates the output file by same name and replace .cpp with .o 

run: 
	./output

clean: 
	rm *.o output 


##target: dependencies
##	action 	

CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cpp calculator.cpp
OBJECTS=$(SOURCES: .cpp=.o)
EXECUTABLE=calculator
LIBRARY = libcalculator.a

all: $(SOURCES) $(EXECUTABLE)

$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o 

$(EXECUTABLE): $(OBJECTS) $(LIBRARY)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -rf *.o $(LIBRARY) $(EXECUTABLE)

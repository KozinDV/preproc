# compiler, tools and options
CXX			= g++
CFLAGS	= -O2 -Wall

# directoryes
SRCDIR	= src
TMPDIR	= tmp
BINDIR	= bin

# make rules
compile: clean object
	$(CXX) $(TMPDIR)\main.o -o $(BINDIR)\main.exe

object:
	$(CXX) -c $(CFLAGS) $(SRCDIR)\main.cpp -o $(TMPDIR)\main.o

clean:
	rm -f $(BINDIR)\main.exe $(TMPDIR)\main.o

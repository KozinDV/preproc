# compiler, tools and options
CXX			= g++
CFLAGS	= -O2 -Wall -Wno-deprecated

# directoryes
SRCDIR	= src
TMPDIR	= tmp
BINDIR	= bin

# make rules
compile: clean object
	$(CXX) $(TMPDIR)\main.o -o $(BINDIR)\main.exe

object: check_dir
	$(CXX) -c $(CFLAGS) $(SRCDIR)\main.cpp -o $(TMPDIR)\main.o

clean:
	rm -f $(BINDIR)\main.exe $(TMPDIR)\main.o

check_dir:
	if (test ! -d $(TMPDIR)) || (test ! -d $(BINDIR)); then mkdir $(TMPDIR) $(BINDIR); fi
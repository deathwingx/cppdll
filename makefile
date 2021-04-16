VPATH=src
CPPFLAGS=-I include

try: try.cpp steamSearch.so
	gcc try.cpp -o try

steamSearch.so: steamSearch.o
	gcc -shared steamSearch.cpp -c steamSearch

steamSearch.o: steamSearch.cpp steamSearch.h
	gcc steamSearch.cpp -o steamSearch

clean:
	rm -rf *.o *.so
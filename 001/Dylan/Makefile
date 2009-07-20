all: problem001 problem001main problem001test
	
problem001: problem001.lid problem001.dylan problem001-exports.dylan
	d2c problem001.lid

problem001main: problem001 problem001main.lid problem001main.dylan problem001main-exports.dylan
	d2c -L. problem001main.lid

problem001test: problem001 problem001test.lid problem001test.dylan problem001test-exports.dylan
	d2c -L. problem001test.lid

clean:
	-rm -f *.o *.s *.a *.du *.c *.mak *~ problem001main problem001test
	-rm -rf .libs

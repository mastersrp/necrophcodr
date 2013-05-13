all: mongoose

mongoose:
	git clone git://github.com/mastersrp/mongoose.git

mongoose/mongoose: mongoose/lua/Makefile
	make -C mongoose linux_lua

mongoose/lua/Makefile: mongoose
	cd mongoose && git submodule init && git submodule update
	cd ..;

clean:
	make -C mongoose/lua clean
	make -C mongoose clean

all: mongoose/mongoose

mongoose/mongoose:
	make -C mongoose linux_lua

clean:
	make -C mongoose clean

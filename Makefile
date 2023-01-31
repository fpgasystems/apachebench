all: libapr ab

libapr:
	make -C ./apr/ all

ab: ab.c ap_release.h
#	gcc ab.c ap_release.h -o ab -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -L./apr/aprutil-build/lib/ -static -lapr-1 -laprutil-1 -Wl,-Bdynamic,-dynamic-linker /lib/ld-musl-x86_64.so.1 -lm -lc -lpthread -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE
	gcc ab.c ap_release.h -o ab -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -L./apr/aprutil-build/lib/ -static -lapr-1 -laprutil-1 -Wl,-Bdynamic,-dynamic-linker /lib64/ld-linux-x86-64.so.2 -lm -lc -lpthread -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE

clean:
	make -C ./apr/ clean
	rm ab
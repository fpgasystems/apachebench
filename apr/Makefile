APR=apr-1.7.4
APRUTIL=apr-util-1.6.3
EXPAT=expat-2.5.0

all: $(APR) $(EXPAT) $(APRUTIL) buildapr

$(APR):
	wget https://dlcdn.apache.org/apr/$(APR).tar.gz
	tar -xf $(APR).tar.gz

$(APRUTIL):
	wget https://dlcdn.apache.org/apr/$(APRUTIL).tar.gz
	tar -xf $(APRUTIL).tar.gz

$(EXPAT):
	wget https://github.com/libexpat/libexpat/releases/download/R_2_5_0/${EXPAT}.tar.gz
	tar -xf $(EXPAT).tar.gz

buildapr:
	cp Makefile_apr $(APR)
	make -C $(APR) -f Makefile_apr
	cp Makefile_expat $(EXPAT)
	make -C $(EXPAT) -f Makefile_expat
	cp Makefile_aprutil $(APRUTIL)
	make -C $(APRUTIL) -f Makefile_aprutil

clean:
	rm -rf apr-*
	rm -rf aprutil-*
	rm -rf expat*
APR=apr-1.7.1
APRUTIL=apr-util-1.6.2
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
	cp Makefile_apr $(APR)-rc2
	make -C $(APR)-rc2 -f Makefile_apr
	cp Makefile_expat $(EXPAT)
	make -C $(EXPAT) -f Makefile_expat
	cp Makefile_aprutil $(APRUTIL)-rc3
	make -C $(APRUTIL)-rc3 -f Makefile_aprutil

clean:
	rm -rf apr-*
	rm -rf aprutil-*
	rm -rf expat*
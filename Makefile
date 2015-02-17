all:

sudo:
	apt-get update -qq
	apt-get install -qq librdf0-dev
	dpkg -P librdf0-dev librasqal3-dev libraptor2-dev librdf0 libraptor2 librasqal3 rasqal-utils redland-utils
	make -f `pwd`/Makefile -C /usr/local/src src

src:
	wget http://download.librdf.org/source/raptor2-2.0.15.tar.gz http://download.librdf.org/source/rasqal-0.9.33.tar.gz http://download.librdf.org/source/redland-1.0.17.tar.gz;
	for x in *.tar.gz; do tar -xzf $$x; done
	cd raptor2-*; ./configure; make install
	cd rasqal-*; ./configure; make install
	cd redland-*; ./configure; make install

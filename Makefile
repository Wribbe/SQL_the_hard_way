DBS := $(patsubst %.sql,%.db,$(wildcard *.sql))

all: $(DBS)

ex3.db: ex2.sql ex3.sql
	rm -f $@
	sqlite3 $@ < ex2.sql
	sqlite3 -echo $@ < ex3.sql

%.db : %.sql
	@rm -f $@
	sqlite3 -echo $@ < $^

clean:
	@rm -f *.db

.PHONY: clean

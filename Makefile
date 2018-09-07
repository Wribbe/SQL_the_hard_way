DBS := $(patsubst %.sql,%.db,$(wildcard *.sql))
DBS := $(filter-out %_queries.db,$(patsubst %_init.db,%.db,$(DBS)))

QS := $(patsubst %_queries.sql,%,$(wildcard *_queries.sql))
LOGS := $(foreach q,$(QS),$q.log)

all: $(DBS) $(LOGS)

%.log : %_queries.sql %.db
	@sqlite3 -echo $(filter %.db,$^) < $(filter %.sql,$^) > $@
	@cat $@

ex3.db: ex2.sql ex3.sql
	rm -f $@
	sqlite3 $@ < ex2.sql
	sqlite3 -echo $@ < ex3.sql

%.db : %_init.sql
	sqlite3 $@ < $^

%.db : %.sql
	@rm -f $@
	sqlite3 -echo $@ < $^

clean:
	@rm -f *.db *.log

.PHONY: clean

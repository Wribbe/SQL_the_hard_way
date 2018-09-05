DBS := $(patsubst %.sql,%.db,$(wildcard *.sql))

all: $(DBS)

%.db : %.sql
	sqlite3 $@ < $^

clean:
	@rm -f *.db

.PHONY: clean

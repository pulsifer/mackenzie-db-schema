
SRC=./src
DIST=./dist
ALL=themes.sql 
OUT=mackenzie-db.sql

.PHONY: clean build default

default: build

themes.sql:
	find $(SRC)/themes -name '*.sql' | xargs cat > $(DIST)/$@

clean:
	rm ./dist/*

build: $(ALL)
	cd $(DIST) && cat $(ALL) > $(OUT)

default: build

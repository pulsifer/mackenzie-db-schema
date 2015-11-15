
SRC=./src
DIST=./dist
ALL=themes.sql 
OUT=mackenzie-db.sql

.PHONY: clean build default

default: build

build:
	find $(SRC)/themes -name '*.sql' | xargs cat > $(DIST)/$@.sql

clean:
	rm ./dist/*

default: build

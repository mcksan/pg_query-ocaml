INSTALL_ARGS := $(if $(PREFIX),--prefix $(PREFIX),)

.PHONY: all clean doc test install

all:
	dune build

clean:
	dune clean

doc:
	dune build @doc

test:
	dune runtest

install:
	dune install -p pg_query $(INSTALL_ARGS)

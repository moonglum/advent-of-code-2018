01: 01.hs
	mkdir -p out
	ghc -o out/01 01.hs
	rm *.hi *.o
	cat 01-input.txt | time ./out/01

02: 02.hs
	mkdir -p out
	ghc -o out/02 02.hs
	rm *.hi *.o
	cat 02-input.txt | time ./out/02

02b: 02b.hs
	mkdir -p out
	ghc -o out/02b 02b.hs
	rm *.hi *.o
	cat 02b-input.txt | time ./out/02b

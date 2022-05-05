output/hello-nasm: exp-1/hello.nasm
	nasm -f macho64 exp-1/hello.nasm
	ld -o hello-nasm hello.o -macosx_version_min 10.15.5 -lSystem

output/hello-gas: exp-1/hello.s
	gcc $^ -o $@

output/hello-5: exp-2/hello-5.s
	gcc $^ -o $@

output/xchg: exp-2/xchg.s
	gcc $^ -o $

output/ret: exp-3/exp-3.s
	gcc $^ -o $

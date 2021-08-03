hello-nasm: hello.nasm
	nasm -f macho64 hello.nasm
	ld -o hello-nasm hello.o -macosx_version_min 10.15.5 -lSystem

hello-gas: hello.s
	gcc hello.s -o hello-gas

nasm -felf64 fr.asm
x86_64-linux-gnu-g++ main.cpp calcwit.cpp utils.cpp fr.cpp fr.o circuit.c /usr/lib/x86_64-linux-gnu/libgmp.a -o circuit -std=c++11 -O3 -DSANITY_CHECK -static -lrt -pthread \
    -Wl,--whole-archive -lpthread -Wl,--no-whole-archive
qemu-x86_64 -cpu max ./circuit input.json output.json
if ! diff output.json witness.json
then
	echo failed
else
	echo succeed
fi


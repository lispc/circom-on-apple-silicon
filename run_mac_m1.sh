# brew install nasm gmp 
arch -x86_64 /usr/local/bin/nasm -fmacho64 --prefix _  fr.asm
#nasm -fmacho64 --prefix _  fr.asm
# arch -x86_64 ? which compiler ? g++ vs clang++ ? system compiler or brew-installed compiler?
# TODO: -fopenmp
arch -x86_64 /usr/local/bin/g++-10 -pthread main.cpp calcwit.cpp utils.cpp fr.cpp fr.o circuit.c -o circuit -lgmp -std=c++11 -O1 -DSANITY_CHECK -I/usr/local/include -L/usr/local/lib/ -march=x86-64
# Illegal instruction: 4
./circuit input.json output.json
if ! diff output.json witness.json
then
	echo failed
else
	echo succeed
fi


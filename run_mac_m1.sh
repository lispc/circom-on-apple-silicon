# brew install nasm gmp 
nasm -fmacho64 --prefix _  fr.asm
# arch -x86_64 ? which compiler ? g++ vs clang++ ? system compiler or brew-installed compiler?
# openmp can also be disabled
arch -x86_64 g++ -pthread main.cpp calcwit.cpp utils.cpp fr.cpp fr.o circuit.c -o circuit -lgmp -std=c++11 -O3 -fopenmp -DSANITY_CHECK -I/usr/local/include -L/usr/local/lib/
./circuit input.json output.json
if ! diff output.json witness.json
then
	echo failed
else
	echo succeed
fi


nasm -felf64 fr.asm
g++ -pthread main.cpp calcwit.cpp utils.cpp fr.cpp fr.o circuit.c -o circuit -lgmp -std=c++11 -O3 -fopenmp -DSANITY_CHECK
./circuit input.json output.json
if ! diff output.json witness.json
then
	echo failed
else
	echo succeed
fi


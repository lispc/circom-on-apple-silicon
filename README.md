# Problem

I want to run a c++ program on Apple M1 Rosetta 2. This program does not use instructions like AVX, but it still fails. 

```
# it will output "Illegal instruction: 4"
run_mac_m1.sh
```

# Solution 

Finally I succeeded by starting an aarch64 Debian docker container, then inside this container, I installed QEMU to emulate the x86\_64 binary which needs ADX/BMI2 instruction. Check the `docker` folder for details

# Problem

I want to run circom witness generator (it needs ADX/BMI2 instructions) on Apple M1 using Rosetta 2. Of source, it fails.

```
# it will output "Illegal instruction: 4"
run_mac_m1.sh
```

# Solution 

Finally I succeeded by starting an aarch64 Debian docker container, then inside this container, I installed QEMU-user to emulate the x86\_64 binary.

Check the `docker` folder for details

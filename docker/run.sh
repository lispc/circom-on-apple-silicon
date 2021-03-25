docker build --squash -t circom_tester2 .
docker run -t -i --rm -v `cd ..;pwd`:/data circom_tester2 bash docker/run_in_docker.sh

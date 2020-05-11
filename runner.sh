max=$1
for i in `seq 2 $max`
do
    docker build --no-cache . | tee -a output.log
    docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}") | tee -a output.log
done
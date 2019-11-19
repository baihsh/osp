 #!/bin/bash

##################################
#
#  import docker image
#  tag    docker image
#  push   docker image to registry
#
##################################

IMAGE_DIR=/tmp/zhanglong/
cd $IMAGE_DIR

curr_list=$(ls ./)
today=$(date +"%Y%m%d")

y2host="172.17.65.12:1179/"
cat /dev/null > /tmp/2.txt

for image in $curr_list;

        do
                /bin/docker load -i $image |awk '{print $3}' >>/tmp/2.txt
                sleep 10;
done 


cat /tmp/2.txt  |while read line

do
        para1=`basename     $line|awk '{print $1}'|awk -F ":"  '{print $1}'`
        /bin/docker tag     $line $y2host$para1":"$today
        /bin/docker push    $y2host$para1":"$today
        echo "image: " $line "imported to registry"
        echo  -e "\n\n"

done

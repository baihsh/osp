  #!/bin/bash 


start=$(date +"%Y%m%d")
end=$(date -d "+1 day" +%Y%m%d)
/usr/bin/docker images|egrep "$start|$end"|awk '{print $1":"$2}' > /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n ctrm /}' /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n default /}' /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n g1 /}' /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n g2 /}' /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n g3 /}' /tmp/1.txt
/usr/bin/sed  '/./{s/^/kubectl rolling-update  --image=&/;s/$/& -n g4 /}' /tmp/1.txt

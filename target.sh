#!/bin/bash
function inst_info {
clear 
 aws ec2 describe-instances --instance-id --filters  "Name=instance-state-code,Values=16" --query "Reservations[].Instances[].{InstanceID:InstanceId}" --output table
}

function select_instance {
echo -e "how much instance want to target:"
read ta
declare -a inst
a=0
echo -e "write instance ID"
while [ $a -lt $ta ]
do
   inst[$a]=ta
   a=`expr $a + 1`
done
foreach inst(*)
echo $inst
end
}

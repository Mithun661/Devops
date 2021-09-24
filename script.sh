#/bin/bash

echo " printing all the arugument passed $@ "

for i in $@;do
	echo $i;
done

num=$(ls -l | awk 'NR>1{print $7}')

echo $num

for i in ${num[@]};
do
	total=`expr $total + $i`
done
echo $total

# Testing AWK and SED cmds

# NR==1 print frist line of a file

cat hosts | awk 'NR==1' | sed 's/[^ ]//' #removes first word in a file

cat hosts | awk 'NR==1' | sed 's/\w*.$//' #removes list word in a file



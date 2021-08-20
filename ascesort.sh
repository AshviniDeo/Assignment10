read -p "Enter number a : " a
read -p "Enter number b : " b
read -p "Enter number c : " c

compute=$(($a+$b*$c))
echo "Computation for a+b*c with value $a , $b and $c is : $compute"


compute2=$(($a*$b+$c))
echo "Computation for a*b+c with value $a , $b and $c is : $compute2"

compute3=$(($c+$a/$b))
echo "Computation for c+a/b with value $a , $b and $c is : $compute3"

compute4=$(($a%$b+$c))
echo "Computation for a%b+c with value $a , $b and $c is : $compute4"

declare -A results
results[1]="$compute"
results[2]="$compute2"
results[3]="$compute3"
results[4]="$compute4"

echo ${results[@]}
echo ${!results[@]}
for (( i=1; i<5; i++ ))
do
    for (( j=$(($i+1)); j<5; j++ ))
    do
        if [ ${results[$i]} -gt ${results[$j]} ]
        then
            temp=${results[$i]}
            results[$i]=${results[$j]}
            results[$j]=$temp
        fi
    done
done
echo " Ascending Array : ${results[@]} "


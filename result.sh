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
results[first]="$compute"
results[second]="$compute2"
results[third]="$compute3"
results[forth]="$compute4"

echo ${results[@]}
echo ${!results[@]}

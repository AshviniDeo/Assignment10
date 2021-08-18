read -p "Enter number a : " a
read -p "Enter number b : " b
read -p "Enter number c : " c

compute4=$(($a%$b+$c))
echo "Computation for a%b+c with value $a , $b and $c is : $compute4"



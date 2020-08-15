#! /bin/bash -x
# Takes temperature as input in degF or degC and converts to other after checking
# its b/w Freezing point and boiling point of water
function Temp_conversion() {
	echo "1. degC to degF"
	echo "2. degF to degC"
	read -p "Choose one of the options :" input_option
	case $input_option in
		1)
			read -p "Enter the temperature in degC :" T_degC
			if [ 0 -lt $T_degC -a $T_degC -lt 100 ]
			then
				echo -n "The temperature in degree Fahreinheit is"
				printf %.3f "$(( 10**3*$T_degC*9/5 + 32000))e-3"
			else
				echo "Enter Temperature within the range of 0'C and 100'C."
			fi ;;
		2)
			read -p "Enter the temperature in degF :" T_degF
			if [ 32 -lt $T_degF -a $T_degF -lt 212 ]
			then
				echo -n "The temperature in degree Centigrade is"
				printf %.3f "$(( (10**3*$T_degF - 32000)*5/9 ))e-3"
			else
				echo "Enter Temperature within the range of 32'F and 212'F."
			fi ;;
		*)
			echo "The input entered is invalid.";;
	esac
}

Temp_conversion

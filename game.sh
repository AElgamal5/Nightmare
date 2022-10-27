#!/bin/bash
#Ahmed Elgamal 201801473
clear
red='\033[0;31m'
green='\033[0;32m'
white='033[0;37m'
black='\033[0;30m'
bold='\033[1m'
underLine='\033[4m'
nc='\033[00m'
again=1
one_passed=0
two_passed=0
three_passed=0
level_select=1
dif_select=1
dif=0 #0=normal and 1=hard
score=0
time=0
function menu(){
while ((again==1))
do 
	echo; echo;
	printf "\t\t\t\t\t\t${red}${bold}NIGHTMARE GAME${nc}\n"
	echo;echo;
	sleep 0.25;
	if(($time==0))
	then
		printf "\t\t\t\t\t 1-Start The Game\n"
	else
		printf "\t\t\t\t\t 1-continue The Game\n"
	fi
	echo;sleep 0.25;
	printf "\t\t\t\t\t 2-About game\n"
	echo;sleep 0.25;
	printf "\t\t\t\t\t 3-Options\n"
	echo;sleep 0.25;
	printf "\t\t\t\t\t 4-${red}Exit$nc\n"
	echo;sleep 0.25;
	read -p "Enter your select : " menuchos

	case $menuchos in
	1)
		((time=1))
		((level_select=1))
		((score=0))
		clear
		if(($three_passed==1 || $two_passed==1))
		then
			while(($level_select==1))
			do
				echo;echo;echo;echo;echo;
				printf "\t\t\t\t\t 1- level one \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 2- level two \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 3- level three \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 4- Back to main menu \n"
				echo;sleep 0.25;
				read -p "select : " x
				case $x in
				1)
					intro
					level_one;;
				2)
					level_two;;
				3)
					level_three;;
				4)
					clear
					((level_select=0))
					;;
				*)
					printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
					read wrongIn
					echo;
					case $wrongIn in
					n*|N*)
						clear
						((level_select=0))
						;;
					*)
						clear
						;;
					esac
					;; 
				esac
			done
		
		elif(($one_passed==1))
		then
			while(($level_select==1))
			do
				echo;echo;echo;echo;echo;
				printf "\t\t\t\t\t 1- level one \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 2- level two \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 3- Back to main menu \n"
				echo;sleep 0.25;
				read -p "select : " x
				case $x in
				1)
					intro
					level_one;;
				2)
					level_two;;
				3)
					clear
					((level_select=0))
					;;
				*)
					printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
					read wrongIn
					case $wrongIn in
					n*|N*)
						clear
						((level_select=0))
						;;
					*)
						clear
						;;
					esac
					;; 
				esac
			done
		elif(($one_passed==0))
		then
			while(($level_select==1))
			do
				echo;echo;echo;echo;echo;
				printf "\t\t\t\t\t 1- level one \n"
				echo;sleep 0.25;
				printf "\t\t\t\t\t 2- Back to main menu \n"
				echo;sleep 0.25;
				read -p "select : " x
				case $x in
				1)
					intro
					level_one;;
				2)
					clear
					((level_select=0))
					;;
				*)
					printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
					read wrongIn
					case $wrongIn in
					n*|N*)
						clear
						((level_select=0))
						;;
					*)
						clear
						;;
					esac
					;; 
				esac
			done
		fi
		;;
	2)
		clear
		echo;echo;echo;
		printf "\t\t\t\t\t About game \n"
		echo;echo;
		printf "Nightmare is horror and survival game\n"
		printf "It depends on your choice, which will leads to more than end\n"
		printf "just focus on the words, especially colord one\n"
		printf "choose the fit level and start the game\n"
		read -p "press any key to continue......... " y
		clear
		;;
	3)
		((dif_select=1))
		while((dif_select==1))
		do
			clear
			echo;echo;echo;
			printf "\t\t\t\t\t Choose difficulty \n"
			echo;sleep 0.25;echo;echo;echo;
			printf "\t\t\t\t\t 1- ${green}Normal${nc}  2- ${red}Hard${nc}\n"
			sleep 0.25;echo;
			printf "\t\t\t\t\t 3- Back to main menu \n"
			sleep 0.25;echo;
			read -p "select : " x
			
			if(($x==1))
			then
				((dif=0))
				((dif_select=0))
				clear
			elif(($x==2))
			then
				((dif=1))
				((dif_select=0))
				clear
			elif(($x==3))
			then
				((dif_select=0))
				clear
			else
				printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
				read wrongIn
				case $wrongIn in
				n*|N*)
					((dif_select=0))
					;;
				*)
					clear
					;;
				esac
			fi
		done
		;;
	4)
		((again=0))
		;;
	*)
		printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
		read wrongIn
		case $wrongIn in
		n*|N*)
			((again=0))
			;;
		*)
			clear
			;;
		esac 
		;;
	esac
done
}

function intro(){
	clear
	sleep 0.25;
	printf "It was a calm night in 2016   \n"
	sleep 2;
	echo;
	printf "Father and mother were trying to make their daughter 'Amal' sleep the first night alone 	\n" 
	sleep 4;
	echo;
	printf "Father: Amal you are 7 years old now and I trust you can do it \n"
	sleep 3;
	echo;
	printf "Mother: and always remember the story of the little princess that fight the monsters and save her parents \n"
	sleep 5;
	echo;
	printf "Amal: I'm not frightened now \n"
	sleep 2;
	echo;
	printf "After this conversation, they say good night to Amal they turn off the light and close the door \n"
	sleep 4;
	echo
	printf "Amal was proud of herself and fell to sleep ZZZzzzz \n"
	sleep 2;
	echo;
	read -p "press any key to continue....... "
	clear
}

function level_one(){
one=1;
sleep 1;

#-----------------------------------
clear
echo; echo;
printf "\t\t\t\t\t\t"
sleep 0.3; printf "${red}${bold}L" ; sleep 0.3; printf "e"; sleep 0.3; printf "v"; sleep 0.3; printf "e"; sleep 0.3; printf "l" ; sleep 0.3; printf " " ; sleep 0.3; printf "O"; sleep 0.3; printf "n"; sleep 0.3; printf "e${nc}\n";
echo; echo;echo;
#----------------------------------
sleep 2;
printf "suddenly, she heard loud sounds like ${red}explosions, collapses$nc\n"
sleep 3;echo;
printf "She feel so fear specialy with ${red}screaming sounds$nc\n"
sleep 3;echo;
printf "Amal closed her eyes and cry, but she remember her ${green}mother story${nc} about the little princess that fight the monsters and save her parents\n"
sleep 4;echo;
printf "Then she removed her tears and say 'I must fight these monsters of this nightmare' but it's dark here\n"
sleep 4;echo;
while ((one == 1))
do
	printf "Now choose : \n"
	sleep 1;echo;
	printf "1- Try to find her parents in dark\n"
	sleep 2;echo;
	printf "2- Searsh for a torsh in her sleeping room\n"
	sleep 2;echo;
	if(($dif==0))
	then
		printf "3- Searsh for a candle in her sleeping room\n"
		sleep 2;echo;
	fi
	printf "Exit- Back to main menu\n"
	sleep 1;echo;
	read -p "select : " x
	echo;
	if (($x==1))
	then
		sleep 1;
		printf "${black}there was a hole in the ground in front of the door and she fell$nc\n"
		sleep 1;echo;
		printf "${red}${bold}Game over${nc}\n"
		((one=0))
		((level_select=0))
		echo;
		printf "${name}\t1\t${score}\n" | cat >> score.txt
		read -p "press any key to comtinue........ " y
		clear
	elif(($x==2||($x==3&&$dif==0))) 
	then
		if(($dif==0))
		then
			((score++))
		else
			((score=score+2))
		fi
		while(($one==1))
		do
			clear
			printf "Now Amal got the light source and ready to look for her parents\n"
			sleep 2;echo;
			printf "Because the light she managed to jump the hole,"
			printf "She decides to go to there room, but there is a sound in the roof\n"
			printf "sound like ${red}crackle${nc} in the roof\n"
			sleep 3;echo;
			printf "choose : \n"
			sleep 2;echo;
			printf "1- Keep walking \n"
			sleep 2;echo;
			printf "2- Stop it looks Dangerous \n"
			sleep 2;echo;
			if(($dif==1))
			then
				printf "3- Run to their room \n"
				sleep 2;echo;
			fi
			printf "Exit- Back to main menu \n"
			sleep 2;echo;
			read -p "select : " x
			echo;
			if(($x==1||($x==3&&$dif==1)))
			then
				sleep 1;
				printf "${black}the roof fall on Amal$nc\n"
				sleep 1;echo;
				printf "${red}${bold}Game over${nc}\n"
				((one=0))
				((level_select=0))
				echo;
				printf "${name}\t1\t${score}\n" | cat >> score.txt
				read -p "press any key to continue.......... " y
				echo;
				clear
			elif(($x==2))
			then
				if(($dif==0))
				then
					((score++))
				else
					((score=score+2))
				fi
				while((one==1))
				do
					printf "The roof fell ${green}in front of Amal${nc}\n"
					sleep 2;echo;
					printf "She determined to go to her parents by climping the fallen roof \n"
					sleep 2;echo;
					printf "And arrived the door but there was huge amount of ${red}heat${nc}  \n"
					sleep 2;echo;
					printf "The door opened by Amal, And the ${red}fire was in every were in the room; And there was a big hole in the roof${nc} \n"
					sleep 4;echo;
					printf "1- Go Back the fire is in every where \n"
					sleep 2;echo;
					printf "2- Jump into the fire to save her parents \n"
					sleep 2;echo;
					printf "Exit- Back to main menu \n"
					sleep 2;echo;
					read -p "select : " x
					echo;
					if(($x==1))
					then
						if(($dif==0))
						then
							((score++))
						else
							((score=score+2))
						fi
						while((one==1))
						do
							printf "It was a good choose the ${red}fire in every where${nc} \n"
							sleep 2;echo;
							printf "Amal become hopless and wentback to her room \n"
							sleep 2;echo;
							printf " Does not know what will she do \n"
							sleep 2;echo;
							printf "After a while ${red}she heard a sound from downstairs${nc} \n"
							sleep 2;echo;
							printf "1- Go down and see what is going on \n"
							sleep 1;echo;
							printf "2- Stay in her room \n"
							sleep 1;echo;
							printf "Exit- Back to main menu \n"
							sleep 2;echo;
							read -p "Select : " x
							echo;
							if(($x==1))
							then
								if(($dif==0))
								then
									((score++))
								else
									((score=score+2))
								fi
								printf "She going down Slowly to see ${red}the source of the sound${nc} \n"
								sleep 2;echo;
								printf "She saw a boy eating some food from the kitchen \n"
								sleep 2;echo;
								printf "Amal felt some relief because he dose not look dangerousn\n"
								sleep 2;echo;
								printf "Then she decides to talk to him and said 'what is your name ? '\n"
								sleep 2;echo;
								printf "He shocked that there are people still here \n"
								sleep 2;echo;
								printf "And said 'my name is ${green}Salem${nc}, And you ?'\n"
								sleep 1;echo;
								printf "she answered 'Amal'  \n"
								sleep 1;echo;
								printf "Amal : Did you know what happen ?\n"
								sleep 1;echo;
								printf "Salem : No, But i'm afraid form ${red}${bold}The Lighing Monsters${nc} \n"
								sleep 2;echo;
								printf "Salem : I saw them many times searshing for people ${red}especially kids${nc} \n"
								sleep 2;echo;
								printf "Amal : But what we will do? \n"
								sleep 1;echo;
								printf "Salem : we must runaway \n"
								sleep 1;echo;
								printf "Amal : No, I should first find my parents \n"
								sleep 2;echo;
								printf "Salem : I heard that they to underground , And almost I know the place \n"
								sleep 2;echo;
								printf "Amal : that looks good , we have to go now \n"
								sleep 2;echo;
								#((one=0))
								((one_passed=1))
								while(($one==1))
								do
									printf "1- Next Level\n"
									echo;sleep 1;
									printf "2- Back to main menu \n"
									echo;sleep 1;
									read -p "select : " x
									echo;
									if(($x==1))
									then
										clear
										((one=0))
										level_two
									elif(($x==2))
									then
										((one=0))
										((level_select=0))
										clear
									else
										printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
										read wrongInOne
										case $wrongInOne in
										n*|N*)
											((one=0))
											((level_select=0))
											clear
											;;
										*)
											clear
											;;
										esac
									fi	
								done
							
							elif(($x==2))
							then
								if(($dif==0))
								then
									((score++))
								else
									((score=score+2))
								fi
								printf "Amal colse the door of her room, And wating for ${red}the monster to go ${nc} \n"
								sleep 2;echo;
								printf "Unfortunately, ${red}the sound keep coming${nc}\n"
								sleep 2;echo;
								printf "Suddenly, ${red}The door open slowly${nc}; But it's a ${green}boy${nc}\n"
								sleep 2;echo;
								printf "Amal felt some relief because he dose not look dangerousn\n"
								sleep 2;echo;
								printf "Then she decides to talk to him and said 'what is your name ? '\n"
								sleep 2;echo;
								printf "He shocked that there are people still here\n"
								sleep 2;echo;
								printf "And said 'my name is ${green}Salem${nc}, And you ?'\n"
								sleep 1;echo;
								printf "she answered 'Amal' \n"
								sleep 1;echo;
								printf "Amal : Did you know what happen ?\n"
								sleep 1;echo;
								printf "Salem : No, But i'm afraid form ${red}${bold}The Lighing Monsters${nc}\n"
								sleep 2;echo;
								printf "Salem : I saw them many times searshing for people ${red}especially kids${nc}\n"
								printf "Amal : But what we will do? \n"
								sleep 1;echo;
								printf "Salem : we must runaway\n"
								sleep 1;echo;
								printf "Amal : No, I should first find my parents\n"
								sleep 2;echo;
								printf "Salem : I heard that they to underground , And almost I know the place\n"
								sleep 2;echo;
								printf "Amal : that looks good , we have to go now\n"
								sleep 2;echo;
								((one_passed=1))
								while(($one==1))
								do
									printf "1- Next Level\n"
									sleep 1;echo;
									printf "2- Back to main menu \n"
									echo;sleep 1;
									read -p "select : " x
									echo;
									if(($x==1))
									then
									clear
									((one=0))
									level_two
									elif(($x==2))
									then
										((one=0))
										((level_select=0))
										clear
									else
										printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
										read wrongInOne
										case $wrongInOne in
										n*|N*)
											((one=0))
											clear
											;;
										*)
											clear
											;;
										esac
									fi	
								done
							elif(($x==4))
							then
								((one=0))
								((level_select=0))
								clear
							else
								printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
								read wrongInOne
								case $wrongInOne in
								n*|N*)
									((one=0))
									((level_select=0))
									clear
									;;
								*)
									clear
									;;
								esac
							fi
						done						
					elif(($x==2))
					then
						sleep 1;
						printf "${black}${bold}She surrounded by the fire${nc}\n"
						sleep 1;echo;
						printf "${red}${bold}Game Over${nc}\n"
						sleep 2;echo;
						((one=0))
						((level_select=0))
						printf "${name}\t1\t${score}\n" | cat >> score.txt
						read -p "press any key to continue......... " y
						echo;
						clear
					elif [[ $x == E* ]] || [[ $x == e* ]]
					then
						((one=0))
						((level_select=0))
						clear
					else
						printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
						read wrongInOne
						case $wrongInOne in
						n*|N*)
							((one=0))
							((level_select=0))
							clear
							;;
						*)
							clear
							;;
						esac
					fi
				done
			elif [[ $x == E* ]] || [[ $x == e* ]]
			then
				((one=0))
				((level_select=0))
				clear
			else
				printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
				read wrongInOne
				case $wrongInOne in
				n*|N*)
					((one=0))
					((level_select=0))
					clear
					;;
				*)
					clear
					;;
				esac
			fi		
		done
	elif [[ $x == E* ]] || [[ $x == e* ]]
	then  
		((one=0))
		((level_select=0))
		clear
	else
		printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
		read wrongInOne
		case $wrongInOne in
		n*|N*)
			((one=0))
			((level_select=0))
			clear
			;;
		*)
			clear
			;;
		esac
	fi
done
}

#---------------------------------------------------------------------------------------------------
#-------------------------------------------LEVEL TWO ---------------------------------------------
#---------------------------------------------------------------------------------------------------
function level_two(){
two=1;
#-----------------------------------
clear
echo; echo;
printf "\t\t\t\t\t\t"
sleep 0.3; printf "${red}${bold}L" ; sleep 0.3; printf "e"; sleep 0.3; printf "v"; sleep 0.3; printf "e"; sleep 0.3; printf "l" ; sleep 0.3; printf " " ; sleep 0.3; printf "T"; sleep 0.3; printf "w"; sleep 0.3; printf "o${nc}\n";
echo; echo;
#----------------------------------
sleep 2;
while((two==1))
do
	sleep 2;
	printf "They decided to search for Amal's parents, And prepared thenself to go out \n"
	sleep 2;echo;
	printf "While walking for awhile, Amal asked Salem ' How the monster looks like ?'\n"
	sleep 2;echo;
	printf "Salem : they looked like us in body, but they do not have hair and have light coming from they head \n"
	sleep 2;echo;
	printf "Amal : that is enough; Let's take a break \n"
	sleep 1;echo;
	printf "Salem : ok, Enter this store \n"
	sleep 1;echo;
	printf "they can't see any thing because it's night \n"
	sleep 1;echo;
	printf "Salem : Amal look there is unconnected wire, But there is ${red}water${nc} around it \n"
	sleep 2;echo;
	printf "Amal : It's high; I can't reach it \n"
	sleep 1;echo;
	printf "Salem : Then try to find somthing to stand on  \n"
	sleep 2;echo;
	printf "Amal : looked around her and find : \n"
	sleep 2;echo;
	printf "1- Wooden chair  \n"
	sleep 1;echo;
	printf "2- Iron chair \n"
	sleep 1;echo;
	if(($dif==0))
	then
		printf "3- Plastic chair \n"
		sleep 1;echo;
	fi
	printf "Exit- Back to main menu \n"
	sleep 1;echo;
	read -p "Choose : " x
	sleep 1;echo;
	if(($x==1||$x==3&&$dif==0))
	then
		if(($dif==0))
		then
			((score++))
		else
			((score=score+2))
		fi
		while(($two==1))
		do
			((x=0))
			until(($x==101))
			do
				clear
				sleep 1;echo;
				printf "Amal managed to ${green}connect the two wires together${nc} \n"
				sleep 1.5;echo;
				printf "${red}Unfortunately, the lighting did not work \n${nc}"
				sleep 1;echo;
				printf "Salam said 'I think the problem in the switches box '\n"
				sleep 1.25;echo;
				printf "Amal opened the box,And find three switches \n"
				sleep 1;echo;
				printf "Now find the correct pattern to light up the store  \n"
				sleep 1.3;echo;
				printf "${green}on${nc} -> 1 and ${red}off${nc} -> 0\n"
				sleep 1;echo;
				read -p "Enter the pattern : " x
			done
			if(($dif==0))
			then
				((score++))
			else
				((score=score+2))
			fi
			while(($two==1))
			do
				sleep 1.5;echo;
				printf "Amal ${green}found the right pattern${nc}, And light the whole store "
				sleep 2;echo;
				printf "they eat from the store and take a rest from walking \n"
				sleep 1;echo;
				printf "After a while, Amal wants to complete the trip to save her parents from the ${red}monsters${nc} \n"
				sleep 2;echo;
				printf "they taken some supplies from the store${green}(food,water,medical tools)${nc} \n"
				sleep 2;echo;
				printf "they back to the road and resume the journey \n"
				sleep 1;echo;
				printf "while they walking, they heard ${red}a loud sound from the sky${nc} \n"			
				sleep 2;echo;
				printf "they looked up and found ${red}starts falling from the sky${nc} \n"
				sleep 1.5;echo;
				printf "And make huge damage to every thing around them \n"
				sleep 1;echo;
				printf "Now choose : \n"
				if(($dif==1))
				then
					sleep 1;echo;
					printf "1- Keep running in the street \n"
					sleep 1;echo;
					printf "2- Take sideway \n"
					sleep 1;echo;
					printf "3- Get into a bulding \n"
					sleep 1;echo;
					printf "Exit- Back to main menu \n"
					sleep 2;echo;
				else
					sleep 1;echo;
					printf "1- Keep running in the street \n"
					sleep 1;echo;
					printf "2- Get into a bulding \n"
					sleep 1;echo;
					printf "Exit- Back to main menu \n"
					sleep 2;echo;
				fi
				read -p "Select : " x
				if(($x==1))
				then
					sleep 1;echo;
					printf "Stars fell while they running in the ${red}street\n"
					sleep 2;echo;
					printf "${bold}GAME OVER${nc} \n"
					sleep 1;echo;
					printf "${name}\t2\t${score}\n" | cat >> score.txt
					read -p "press any key to continue........" y
					((two=0))
					((level_select=0))
					clear
				elif(($x==2&&$dif==1))
				then
					sleep 1;
					printf "they surrounded by ${red}falling buildings\n"
					sleep 2;echo;
					printf "${bold}GAME OVER${nc} \n"
					sleep 1;echo;
					printf "${name}\t2\t${score}\n" | cat >> score.txt
					read -p "press any key to continue......." y
					((two=0))
					((level_select=0))
					clear
				elif(($x==2&&$dif==0||$x==3&&$dif==1))
				then
					if(($dif==0))
					then
						((score++))
					else
						((score=score+2))
					fi
					while(($two==1))
					do
						sleep 2;
						printf "Now they are in a house, but ${red}the Explosions are so heavy${nc} \n"
						sleep 1;echo;
						printf "1- Go under the table \n"
						sleep 1;echo;
						printf "2- Take a wall as a cover \n"
						sleep 1;echo;
						if(($dif==0))
						then
							printf "3- Go under the couch \n"
							sleep 1;echo;
						fi
						printf "Exit- Back to main menu \n"
						sleep 15;echo;
						read -p "select : " x
						if(($x==1||$x==3&&$dif==0))
						then
							sleep 1;echo;
							printf "Amal and Salem successfully managed to survive in the stars falling, ${green}by entering a random house${nc} \n"
							sleep 2;
							((two_passed=1))
							while(($two==1))
							do
								sleep 0.25;echo;
								printf "1- Next Level\n"
								sleep 0.25;echo;
								printf "2- Back to main menu \n"
								sleep 0.25;echo;
								read -p "select : " x
								
								if(($x==1))
								then
								clear
								((two=0))
								level_three
								elif(($x==2))
								then
									((two=0))
									((level_select=0))
									clear
								else
									printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
									read wrongInOne
									case $wrongInOne in
									n*|N*)
										((two=0))
										((level_select=0))
										clear
										;;
									*)
										clear
										;;
									esac
								fi	
							done

						elif(($x==2))
						then
							sleep 0.5;
							printf "All walls are ${red}not Save${nc} \n"
							sleep 1;echo;
							printf "${red}${bold}GAME OVER${nc} \n"
							sleep 2;echo;
							printf "${name}\t2\t${score}\n" | cat >> score.txt
							read -p "press any key to continue........" y
							((two=0))
							((level_select=0))
							clear
						elif [[ $x == E* ]] || [[ $x == e* ]]
						then
							clear
							((two=0))
						else
							printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
							read wrongInOne
							case $wrongInOne in
							n*|N*)
								((two=0))
								((level_select=0))
								clear
								;;
							*)
								clear
								;;
							esac
						fi
					done
				elif [[ $x == E* ]] || [[ $x == e* ]]
				then
					clear
					((two=0))
					((level_select=0))
				else
					printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
					read wrongInOne
					case $wrongInOne in
					n*|N*)
						((two=0))
						((level_select=0))
						clear
						;;
					*)
						clear
						;;
					esac
				fi
				
			done
			clear
		done
	elif(($x==2))
	then
		sleep 1;
		printf "There was ${red}electricity in the wire${nc} \n"
		sleep 2;echo;
		printf "${red}${BOLD}GAME OVER${nc} \n"
		sleep 1;echo;
		printf "${name}\t2\t${score}\n" | cat >> score.txt
		read -p "Press any key to continue......." y
		((two=0))
		((level_select=0))
		clear
	elif [[ $x == E* ]] || [[ $x == e* ]]
	then
		((two=0))
		clear
	else
		printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
		read wrongInOne
		case $wrongInOne in
		n*|N*)
			((two=0))
			((level_select=0))
			clear
			;;
		*)
			clear
			;;
		esac
	fi
done
}
#---------------------------------------------------------------------------------------------------
#-------------------------------------------LEVEL three --------------------------------------------
#---------------------------------------------------------------------------------------------------
function level_three(){
three=1;
#-----------------------------------
clear
echo; echo;
printf "\t\t\t\t\t\t"
sleep 0.3; printf "${red}${bold}L" ; sleep 0.3; printf "e"; sleep 0.3; printf "v"; sleep 0.3; printf "e"; sleep 0.3; printf "l" ; sleep 0.3; printf " " ; sleep 0.3; printf "T"; sleep 0.3; printf "h"; sleep 0.3; printf "r"; sleep 0.3; printf "e"; sleep 0.3; printf "e${nc}\n";
echo; echo;
#----------------------------------
while(($three==1))
do
	printf "While the stars falling, they enterd a random house \n"
	sleep 2;echo;
	printf "The house looks very old \n"
	sleep 1;echo;
	printf "Once they entered the house, they heard sounds like ${red}cracks${nc} \n"
	sleep 2;echo;
	printf "they stayed int the house till ${red}the stars stop falling${nc} \n"
	sleep 2;echo;
	printf "Amal didn't feel relief in the house, And asked Salem to get out \n"
	sleep 1.5;echo;
	printf "Salem said \"we need to take a rest, and it is look save here\" \n"
	sleep 2;echo;
	printf "while Salem was talking, ${red}the house collapse started${nc}\n"
	sleep 1.5;echo;
	printf "1- Stay at the house and take cover \n"
	sleep 1;echo;
	printf "2- Get out the house \n"
	sleep 1;echo;
	if(($dif==1))
	then
		printf "3- Go to the basement \n"
		sleep 1;echo;
	fi
	printf "Exit- Back to main menu \n"
	sleep 1;echo;
	read -p "Select : " x
	if(($x==1))
	then
		sleep 1;echo;
		printf "All the house ${red}collapsed${nc}\n"
		sleep 1;echo;
		printf "${red}${bold}Game Over${nc}\n"
		sleep 1;echo;
		printf "${name}\t3\t${score}\n" | cat >> score.txt
		read -p "Press any key to continue........ " y
		((three=0))
		((level_select=0))
		clear
	elif(($x==2))
	then
		if(($dif==0))
		then
			((score++))
		else
			((score=score+2))
		fi
		while(($three==1))
		do
			
			printf "After they escaped from the house, Salem said \"Amal, you was right\"\n"
			sleep 2;echo;
			printf "Then they catch their breath, they decided to complete\n"
			sleep 2;echo;
			printf "Suddenly they saw a group of lighting monsters, when they walking \n"
			sleep 2;echo;
			printf "The problem is ${red}they saw them too${nc}\n"
			sleep 1;echo;
			printf "1- Fight the lighting monsters\n"
			sleep 1;echo;
			printf "2- hide between cars\n"
			sleep 1;echo;
			printf "3- Run from them\n"
			sleep 1;echo;
			printf "Exit- Back to main menu\n"
			sleep 1;echo;
			read -p "select : " x
			
			if(($x==1))
			then
				end1
				((three=0))
				((level_select=0))
			elif(($x==3))
			then
				end2
				((three=0))
				((level_select=0))
			elif(($x==2))
			then
				if(($dif==0))
				then
					((score++))
				else
					((score=score+2))
				fi
				while(($three==1))
				do
					sleep 1;echo;
					printf "Now Amal and Salem are hidden between the cars and surrounded by ${red} the lighting monsters${nc}\n"
					sleep 2.5;echo;
					printf "What will they do?\n"
					sleep 1;echo;
					printf "1- Throw a stone to distract the monsters\n"
					sleep 1;echo;
					printf "2- Stay clam\n"
					sleep 1;echo;
					printf "3- Run!\n"
					sleep 1;echo;
					printf "Exit- Back to main menu\n"
					sleep 1;echo;
					read -p "Select : " x
					if(($x==1))
					then
						sleep 1;echo;
						printf "They succeed in ${green}distracting the monsters${nc}\n"
						sleep 1;echo;
						printf "But they didtn't know what would they do\n"
						sleep 1;echo;
						printf "they have no way except ${red}runing${nc}\n"
						end2
						((three=0))
						((level_select=0))
					elif(($x==2))
					then
						end1
						((three=0))
						((level_select=0))
					elif(($x==3))
					then
						end2
						((three=0))
						((level_select=0))
					elif [[ $x == E* ]] || [[ $x == e* ]]
					then
						clear
						((three=0))
					else
						printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
						read wrongInOne
						case $wrongInOne in
						n*|N*)
							((three=0))
							((level_select=0))
							clear
							;;
						*)
							clear
							;;
						esac
					fi
				done
			elif [[ $x == E* ]] || [[ $x == e* ]]
			then
				clear
				((three=0))
				((level_select=0))			
			else
				printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
				read wrongInOne
				case $wrongInOne in
				n*|N*)
					((three=0))
					((level_select=0))
					clear
					;;
				*)
					clear
					;;
				esac
			fi
		done
	elif(($x==3&$dif==1))
	then
		sleep 1;echo;
		printf "They ${red}stuck in the basement${nc}\n"
		sleep 1;echo;
		printf "${red}${bold}Game Over${nc}\n"
		sleep 1;echo;
		printf "${name}\t3\t${score}\n" | cat >> score.txt
		read -p "Press any key to continue......... " y
		((three=0))
		((level_select=0))
		clear
	elif [[ $x == E* ]] || [[ $x == e* ]]
	then
		((three=0))
		((level_select=0))
		clear
	else
		printf "Wrong input :( try again ( ${green}yes${nc} or ${red}no${nc} ) : "
		read wrongInOne
		case $wrongInOne in
		n*|N*)
			((three=0))
			((level_select=0))
			clear
			;;
		*)
			clear
			;;
		esac
	fi
	 
done
}

function end1(){
	((three_passed=1))
	printf "${name}\t3\t${score}\n" | cat >> score.txt
	sleep 1;echo;
	printf "Amal and Salem picked stones and throw them towards the monsters but the more they are close to the monsters the more they were surprised the monsters are humans \n"
	sleep 4;echo;
	printf "The stones fell from their hands\n"
	sleep 1.5;echo;
	printf "Amal cried so hard and said\"But I think it was a dream\""
	sleep 2;echo;
	printf "The man looked around him to ruin and said \"we too\""
	sleep 2;echo;
	printf "The volnteers took Amal and salem to migrants camp\n"
	sleep 2;echo;
	printf "Amal said to the man \"But where is my parents ?\""
	sleep 2;echo;
	printf "And he answered \"Don't lose your hope Amal,we will search for them; But now you and Salem should take a rest\"\n"
	sleep 3;echo;
	printf "Amal finaly go to the bed after a long night\n"
	sleep 1.5;echo;
	printf "she dreamed about her ${green}parents${nc}\n"
	sleep 1;echo;
	printf "they looked very good and healthy and told her \"Amal don't worry about us\"\n"
	sleep 2;echo;
	printf "Amal run to hug them, But they fade away\n"
	sleep 1.5;echo;
	printf "This story was one of thousunds of ${red}stories${nc} in Syria\n"
	sleep 2;echo;
	printf "Donate for Amal and thousands of children : https://ihhorgtr/ar/donate/refugee-camps \n"
	sleep 2.3;echo;
	printf "${green}${bold}THE END ${nc}\n\n"
	sleep 2;echo;
	read -p "Press any key to continue........... " x
	clear
}

function end2(){
	((three_passed=1))
	printf "${name}\t3\t${score}\n" | cat >> score.txt
	sleep 2;echo;
	printf "They keep running and running\n"
	sleep 1;echo;
	printf "They looked in the sky, stars falling again \n"
	sleep 1.5;echo;
	printf "But luck was not with them this time \n"
	sleep 1;echo;
	printf "One of the stars fell near them then Amal immediately ${red}blackout${nc}\n"
	sleep 2;echo;
	printf "She dreamed about her ${green}parents${nc}\n"
	sleep 1;echo;
	printf "They looked very good and healthy and told her \"Amal don't worry about us\"\n"
	sleep 2;echo;
	printf "Amal run to hug them, But they fade away\n"
	sleep 1;echo;
	printf "while opening her eyes slowly, she heard someone said \"She wake up! \"\n"
	sleep 2;echo;
	printf "Amal said\"Where is Salem ? \"\n"
	sleep 1;echo;
	printf "The doctor said \"Who is Salem ?\"\n"
	sleep 1;echo;
	printf "Amal : \"He was with my when the stars falling\"\n"
	sleep 2;echo;
	printf "Doctor : \"But there was no one called Salem they find you alone\"\n"
	sleep 2.5;echo;
	printf "Doctor : \"ButDon't lose your hope Amal,we will search for him; But now you and Salem should take a rest \"\n"
	sleep 2.5;echo;
	printf "This story was one of thousunds of ${red}stories${nc} in Syria\n"
	sleep 2;echo;
	printf "Donate for Amal and thousands of children : https://ihhorgtr/ar/donate/refugee-camps \n"
	sleep 2.5;echo;
	printf "${green}${bold}THE END ${nc}\n\n"
	sleep 1;echo;
	read -p "Press any key to continue....... " x
	clear
}

function title(){
	echo;echo;echo;echo;
	echo;echo;echo;
	printf "${red}${bold}     ______   _         _                                            ______                      
    |  ___ \ (_)       | |     _                                    / _____)                     
    | |   | | _   ____ | | _  | |_   ____    ____   ____  ____     | /  ___   ____  ____    ____ 
    | |   | || | / _  || || \ |  _) |    \  / _  | / ___)/ _  )    | | (___) / _  ||    \  / _  )
    | |   | || |( ( | || | | || |__ | | | |( ( | || |   ( (/ /     | \____/|( ( | || | | |( (/ / 
    |_|   |_||_| \_|| ||_| |_| \___)|_|_|_| \_||_||_|    \____)     \_____/  \_||_||_|_|_| \____)
                (_____|${nc}\n"
    echo;echo;echo;echo;echo;
    sleep 2;
    printf "\t\t\t\t${red}Enter your name : ${nc}"
    read name
    clear
}

#Calling the functions : 
if [ -e "score.txt" ]
then
	nohup mplayer -loop 0  rebedo.mp3 > /dev/null 2>&1 &
	title
	menu
else
	touch score.txt
	nohup mplayer -loop 0  rebedo.mp3 > /dev/null 2>&1 &
	title
	menu
fi

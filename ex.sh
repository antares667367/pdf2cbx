#!/bin/bash
update=0
rootTmp=0
mysql=0
mysqlinstalled=99
#FUNCTIONS________________________________________________________________________________________
#----------------
pressValid ()
{
read -p "Appuyez sur entrée pour continuer " -n1 -s
}
#--------------
choice ()
{
if [[ "$2" -ge 1 ]]
then
echo -e "\033[40;91m$1 $3 ...DONE\033[0m"
else
echo -e "\033[40;93m$1 $3\033[0m"
fi
}
checkinstall (){
sudo dpkg-query -l | grep $1 | wc -l
}
#----------------
host ()
{
echo $(hostname -i)
}
#---------------
fct_menu ()
{
echo
echo "Choisissez un opération à effectuer"
echo
choice "1" "$rootTmp" "Octroyez les droits root a /tmp"
choice "2" "$update" "Mise à Jour du Système"
choice "3" "mysql" "Installation de mysql-server-5.5"
echo " 5"
echo " 6"
echo
echo -n "Choix :"
echo -n

read optionmenu
    case $optionmenu in
    #------------------OK
     1)
        echo
        echo "Octroi des droits root a /tmp"
        sleep 1
        sudo chown root:root /tmp
        sudo chmod 1777 /tmp
        sleep 1
        echo "Terminé, vous avez a présent les droits root sur /tmp"
        ls -la /tmp
        rootTmp=$((rootTmp + 1))
        sleep 2
        echo
        clear ; fct_menu ;;
    #---------------------OK
    2)
        echo
        echo "Mise à jour du système sur $(host)"
        sleep 1
        sudo apt-get update && sudo apt-get upgrade
        sleep 1
        echo "Système mis à jour"
        update=$((update + 1))
        sleep 1
        echo
        clear ; fct_menu ;;

    3)
        ;;
    4)
        echo
        echo "\033[34;1m Lancement de 4 \033[0m"
        echo
        mplayer -playlist 4 ; reset ;
        echo
        echo "\033[34;1m Arrêt de 4 \033[0m"
        echo
        fct_menu ;;
           5)
               echo
               echo "\033[34;1m Lancement de 5 \033[0m"
               echo
               mplayer -playlist 5 ; reset ;
               echo
               echo "\033[34;1m Arrêt de 5 \033[0m"
               echo
               fct_menu ;;
           6)
               echo
               echo "\033[34;1m lancement de 6 \033[0m"
               echo
               mplayer -playlist 6 ; reset ;
               echo
               echo "\033[34;1m Arrêt de 6 \033[0m"
               echo
               fct_menu ;;
           Q)
               reset ;
               exit ;;
           *)
               reset ;
               echo
               echo "\033[31;1m Erreur de frappe \033[0m"
               echo
               fct_menu ;;
               esac
               }
               fct_menu

               #___________________________________________________________________________________________________
                echo "Ce script va installer les différents éléments nécéssaires à la configuration du server sur : \u.\h"

               #pressValid

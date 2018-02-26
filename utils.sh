
 checkinstall () {
   _test=sudo dpkg-query -l | grep $1 | wc -l &> /dev/null
   ctxt purple def def "Installation de $1 ....................................."
   if [ "$_test" == "0" ]; then
     ctxt def def def "Installation de $1"
     echo $2 | sudo -S -y -qq apt-get install $1
   else
     ctxt red def def "$1" n
     ctxt yellow def def "est déja installé ..."
   fi

 }

checkDir () {
  if [ -d "$1" ]
then
 ctxt yellow def def "Le répertoire $1 existe déja"
else
 sudo mkdir $1
 ctxt yellow def def "Le répertoire $1 à été crée"
fi
}

checkFile () {
  if [ -f "$1" ]
then
 ctxt yellow def def "Le fichier $1 existe déja"
else
 sudo mkdir $1
 ctxt yellow def def "Le fichier $1 à été crée"
fi
}

config () {
  ctxt red def def "Entrez votre mot de passe et pressez" n
  ctxt yellow def def "ENTREE" n
  ctxt def def hdn ""
  read -s password #l'option -s est utilisée pour cacher le read
  checkinstall pv $password
  checkinstall zip $password
  checkinstall rar $password
  checkinstall p7zip $password
  checkinstall tar $password
  sleep 1
  checkDir pdf2cbx
  cd /home/$USER/pdf2cbx
  checkDir input
  checkDir output
  echo $password | sudo -S chmod -R 777 /home/$USER/pdf2cbx
  sleep 1
  ctxt red def def "Opérations de configuration terminées"
  sleep 2
  clear ; displayMenu
}

pdf2jgp () {
  cd $inputPath
}

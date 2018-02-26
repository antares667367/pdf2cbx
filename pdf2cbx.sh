#!/bin/bash
# Convertisseur de fichiers .pdf en .cbr, .cbz et .cbt
# Aldeguer Thomas logrus66@gmail.com
# 2015
#
#
#PATH

script="pdf2cbx"
folder=$PWD
inputPath="/home/$USER/input"
outputPath="/home/$USER/output"


#INCLUDE
source $folder/menumaker.sh
source $folder/ctxt.sh
source $folder/txts.sh
source $folder/utils.sh

#CALL TITLE
echo ""
title
#CALL MENU
displayMenu

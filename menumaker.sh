
    #MENU
    menu () {
    ctxt $1 def und "$4" n
    ctxt $2 def def "$5" n
    ctxt $3 def def "$6"
    }

    doneAndRestart () {
    ctxt yellow def def "Opération terminée ,pressez " n
    ctxt red def def "m " n
    ctxt yellow def def "pour retourner au menu où" n
    ctxt red def def "q" n
    ctxt yellow def def "pour quitter ." n
    read backToMenu
        case $backToMenu in
         m )
         clear ; displayMenu
           ;;
             q )
             exit 0
            ;;
              * )
              ctxt red def def "Option inconnue !!"
              doneAndRestart
              ;;
        esac
    }

    menuCase () {

      _pv=9
      _7z=0
      _rar=0
      _tar=0
      _zip=0

    case $input in
     1 )
     config
       ;;
     2 )
       ;;
     3 )
       ;;
     4 )
       ;;
     5 )
       ;;
     6 )
       ;;
     7 )
       ;;
     8 )
       ;;
    esac
    }

    displayMenu () {
    ctxt def def def ""
    menu red cyan yellow "1" "      configuration" "Installation et configuration ."
    menu red cyan yellow "2" "    *.pdf > */*.jpg" "Convertir une ou plusieurs collections d'images à partir d'un ou plusieurs .pdf ."
    menu red cyan yellow "3" "  */*.jpg > */*.pdf" "Créer un ou plusieurs .pdf  à partir d'une ou plusieurs collections d'images"
    menu red cyan yellow "4" "  */*.jpg >   *.cbx" "Créer un ou plusieurs .cbx a partir d'une ou plusieurs collections d'images"
    menu red cyan yellow "5" "    *.cbx > */*.jpg" "Créer une ou plusieurs collection d'images à partir d'un ou plusieurs .cbx"
    menu red cyan yellow "6" "    *.pdf >   *.cbx" "Créer un ou plusieurs .cbx a partir d'un ou plusieurs .pdf"
    menu red cyan yellow "7" "    *.cbx >   *.pdf" "Créer un ou plusieurs .pdf a partir d'un ou plusieurs .cbx"
    menu red cyan purple "8" "             manuel" "Explique comment ça marche ( à lire au moins une fois )"
    sleep 1
    ctxt def def def ""
    ctxt yellow def def "Faites un choix et tapez" n
    ctxt red def bld "ENTREE" n
    ctxt red def blk ">" n
    read input
    menuCase
    }

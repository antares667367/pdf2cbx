
# available :: default,red,darkgreen,brown,marine,purple,duck,lightgrey,darkgrey,darkred,lightgreen,yellow,blue,pink,cyan,white
# usage : ctxt color background formatting  text n(no new line)
ctxt () {
  color=0
  format=0
  back=0
  # color
  case $1 in
    def )
    local color=$((39))
    ;;
    red )
    local color=$((31))
    ;;
    darkgreen )
    local color=$((32))
    ;;
    brown )
    local color=$((33))
    ;;
    marine )
    local color=$((34))
    ;;
    purple )
    local color=$((35))
    ;;
    duck )
    local color=$((36))
    ;;
    lightgrey )
    local color=$((37))
    ;;
    darkgrey )
    local color=$((90))
    ;;
    darkred )
    local color=$((91))
    ;;
    lightgreen )
    local color=$((92))
    ;;
    yellow )
    local color=$((93))
    ;;
    blue )
    local color=$((94))
    ;;
    pink )
    local color=$((95))
    ;;
    cyan )
    local color=$((96))
    ;;
    white )
    local back=$((97))
    ;;
  esac
  #background
  case $2 in
    def )
    local back=$((40))
    ;;
    red )
    local back=$((41))
    ;;
    darkgreen )
    local back=$((42))
    ;;
    brown )
    local back=$((43))
    ;;
    marine )
    local back=$((44))
    ;;
    purple )
    local back=$((45))
    ;;
    duck )
    local back=$((46))
    ;;
    lightgrey )
    local back=$((47))
    ;;
    darkgrey )
    local back=$((100))
    ;;
    darkred )
    local back=$((101))
    ;;
    lightgreen )
    local back=$((102))
    ;;
    yellow )
    local back=$((103))
    ;;
    blue )
    local back=$((104))
    ;;
    pink )
    local back=$((105))
    ;;
    cyan )
    local back=$((106))
    ;;
    white )
    local back=$((107))
    ;;
  esac
  #formatting
  case $3 in
    def )
    local format=$((0))
      ;;
    bld )
    local format=$((1))
      ;;
    dim )
    local format=$((2))
      ;;
    uld )
    local format=$((4))
      ;;
    blk)
   local format=$((5))
      ;;
    hdn )
    local format=$((8))
      ;;
  esac

  color+="m"
  echo -e$5 "\033[$format;$back;$color $4 \033[0m"

}

cdef () {
  echo -e$2 "\033[0;40;39m $1 \033[0m"
}

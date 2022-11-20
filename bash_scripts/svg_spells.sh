#! /usr/bin/env bash
# Cool SVG drawing codeCastings:

VERSION="[0.0]Clumsy Apprentice" #He can clean the floor and that's it!
VERSION="[0.1]It reads!" #He can RTFM![Generate SVG files and update them]
VERSION="[0.3]Fire ball!" #A few new functions to the library.
VERSION="[1.3]Fire ball!" #Has a main and can cute name own spells!.

COMMODOREEXAMPLE(){
cat << 'EOF'
c64_font_test.txt
   See: http://caniuse.com/#feat=eot











   If you do not see the font, you may be using a
   browser that disallows local font loading due
   to CORS (probably Firefox or IE).
   “C64 Pro Mono/Style”
      upper/graphics
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  

 
      
         
         
         
      
 


   “C64 Pro Mono/Style”
      lower/upper
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  

hh ─  9472
HH ━  9473   vv │  9474   VV ┃  9475   3- ┄  9476
3_ ┅  9477   3! ┆  9478   3/ ┇  9479   4- ┈  9480
4_ ┉  9481   4! ┊  9482   4/ ┋  9483   dr ┌  9484
dR ┍  9485   Dr ┎  9486   DR ┏  9487   dl ┐  9488
dL ┑  9489   Dl ┒  9490   LD ┓  9491   ur └  9492
uR ┕  9493   Ur ┖  9494   UR ┗  9495   ul ┘  9496
uL ┙  9497   Ul ┚  9498   UL ┛  9499   vr ├  9500
vR ┝  9501   Vr ┠  9504   VR ┣  9507   vl ┤  9508
vL ┥  9509   Vl ┨  9512   VL ┫  9515   dh ┬  9516
dH ┯  9519   Dh ┰  9520   DH ┳  9523   uh ┴  9524
uH ┷  9527   Uh ┸  9528   UH ┻  9531   vh ┼  9532
vH ┿  9535   Vh ╂  9538   VH ╋  9547   FD ╱  9585
BD ╲  9586   TB ▀  9600   LB ▄  9604   FB █  9608
lB ▌  9612   RB ▐  9616   .S ░  9617   :S ▒

┏┅┅┳━━┳                                         
┇01┊░░ █▒░                                      
┣━━╋━━╋                                         
┗━━┻━━┻                                         

╱▀▀▀▀▀▀▀▀▀▀▀╲
│┏┅┓ ┏━┓ ┏━┓│
│┃┣━┫┇┅┇┇│
│┗┳┛ ┗┳┛ ┗┳┛│
│┃  ┃   ┃ │
│┏┻┓ ┏┻┓ ┏┻┓│
│┃┣━┫ ┇┉┫┇│
│┗━┛ ┗┅┛ ┗┅┛│
│ ┃   ┃   ┇ │
│┏┻┓ ┏┻┓ ┏┅┓│
│┃┣┉┫┣┉┇┇│
│┗━┛ ┗┅┛ ┗┅┛│
╲▄▄▄▄▄▄▄▄▄▄▄╱


  
  ┏┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┓
  ┇┏┉┓                                             ┇
  ┇┊┊ll that was said about this is that it was a ┇
  ┇┗┉┛ big mistake to allow such merge to happen!  ┇
  ┇Netero knew well that those that made such a    ┇
  ┇deal at such a difficult time in the nation had ┇
  ┇only their own self interest in mind.           ┇
  ┇                                                ┇
  ┇To prepare for the incoming storm he had to     ┇
  ┇head strait to Gransys. There on the Dukes      ┇
  ┇Palace he would be able to see them comming.    ┇
  ┇                                                ┇
  ┇ Jack the Ripper was an assasin well known in   ┇
  ┇ the realm.                                     ┇
  ┇                                                ┇
  ┇ JACK THE RIPPER                                ┇
  ┇                                                ┇
  ┇ [Strength has increased by 10pts]              ┇
  ┇ [Inteligence has decreased by 2]               ┇
  ┇                                                ┇
  ┣┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┫
  ┇[O]ther options. [F]lavor text. [M]ap. [H]elp.  ┇
  ┇[P]oints. [A]scii. [HP] [STR] [DEX] [INT] [WIS] ┇
  ┇{STATUS:Lines655-Words554-Terms88374-Gold299    ┇
  ┗┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┛
  

┏┉┓┊┊┗┉┛
EOF
} #Just to keep and take chars from.

# 
#  BEGIN FUNCTION LIBRARY 
# 

# 
#  GENPROGRAMTITLE 
# 
#Generate cool C64 looking program titles!
GENPROGRAMTITLE(){
  TITLE="$@"
  if [ ${#TITLE} -gt 63 ]
  then
    echo "ERROR... Title too large to fit."
    exit 200
  fi
  TLC=""
  TRC=""
  LLC=""
  LRC=""
  TP=""
  SIDE=""
  BT=""
  FILLA=""
  FILLB=""
  LINE1="# $TLC"
  LINE2="# $SIDE"
  LINE3="# $LLC"
  FILLER=$(((68-(${#TITLE}+3))/2))
  FILLERA=""
  FILLERB=""
  for i in $(seq $FILLER)
  do
    FILLERA="$FILLERA$FILLA"
    FILLERB="$FILLERB$FILLB"
  done
  LINE2="$LINE2$FILLERA $TITLE $FILLERB$SIDE"
  for i in {1..67}
  do
    LINE1="$LINE1$TP"
    LINE3="$LINE3$TP"
  done
  LINE1="$LINE1$TRC"
  LINE3="$LINE3$LRC"
  printf "%s\n%s\n%s\n" "$LINE1" "$LINE2" "$LINE3"
} #End of GENPROGRAMTITLE
#Delete temporary files before calling DOCGEN:
CLEARPASTFILES(){
  rm /tmp/*.svg
}

# 
#  DOCGEN 
# 
#Generate a SVG document on /tmp to play with!
#Pars: Width Height Background_Color
#Exported variables DOCWIDTH/DOCHEIGHT/HEAD/CODE/TAIL/FNAME/DOCBACKCOLOR
#Document generation:
DOCGEN(){
  export DOCWIDTH=$1
  export DOCHEIGHT=$2
  export DOCBACKCOLOR=$3
  A=(
    "<svg width='"
    $DOCWIDTH
    "' height='"
    $DOCHEIGHT
    "' >"
    "<path d='"
    "M 0,0 h $DOCWIDTH v $DOCHEIGHT h -$DOCWIDTH z"
    "' fill='"
    "$DOCBACKCOLOR"
    "' />"
  )
  export HEAD=${A[@]}
  export CODE="<!-- SVG CodeCasted by SVG_spells.sh $VERSION-->"
  export TAIL="</svg>"

  export FNAME=casted_svg_"$RANDOM".svg
  echo "$HEAD$CODE$TAIL" > /tmp/"$FNAME"
} #End of DOC.GEN

#Regenerate the file with the additions to CODE since file generation:
REDRAW(){
  echo "$HEAD$CODE$TAIL" > /tmp/"$FNAME"
} #End of REDRAW



# 
#  SETCENTERCIRCLE 
# 
#Add a center circle as large as possible inside the generated drawing area:
#PARS: Fill
#e.g. SETCENTERCIRCLE "$(RNDCOLOR)"
SETCENTERCIRCLE(){
  FILL="$1"
  if [ $DOCWIDTH -lt $DOCHEIGHT ]
  then
    MIDWITCHR=$(($DOCWIDTH/2))
  else
    MIDWITCHR=$(($DOCHEIGHT/2))
  fi
  CODE=(
    "$CODE<circle cx='$(($DOCWIDTH/2))'"
    " cy='$(($DOCHEIGHT/2))'"
    " r='$MIDWITCHR' fill='${FILL}' />"
  )
  CODE="${CODE[@]}"
} #End of SETCENTERCIRCLE

# 
#  RANDOM COLOR + BIAS 
# 
#Return a random rgb color with or without a bias(-+)
#Pars: RedBias GreenBias BlueBias
RNDCOLOR(){
  RBIAS=${1:-0}
  GBIAS=${2:-0}
  BBIAS=${3:-0}
  COLORS=($RBIAS $GBIAS $BBIAS)
  RBIAS=$(($RANDOM%256+$RBIAS))
  if [ $RBIAS -gt 255 ]
  then
    RBIAS=255
  elif [ $RBIAS -lt 0 ]
  then
    RBIAS=0
  fi
  GBIAS=$(($RANDOM%256+$GBIAS))
  if [ $GBIAS -gt 255 ]
  then
    GBIAS=255
  elif [ $GBIAS -lt 0 ]
  then
    GBIAS=0
  fi
  BBIAS=$(($RANDOM%256+$BBIAS))
  if [ $BBIAS -gt 255 ]
  then
    BBIAS=255
  elif [ $BBIAS -lt 0 ]
  then
    BBIAS=0
  fi
  VAL=(
    "rgb($RBIAS"
    ",$GBIAS"
    ",$BBIAS)"
  )
  VAL="${VAL[@]}"
  echo "$VAL"
} #End of RNDCOLOR

# 
#  END OF LIBRARY 
# 

MAIN(){
# 
#  MAIN 
# 

  #Generate the DEBIAN BLUE desktop to play with:
  CLEARPASTFILES 2>/dev/null
  DOCGEN 1366 768 teal



  #Creating a cool path generator, later I will introduce effects to it, like
  #+ break segments in smalles segments and move then around ramdonly...

  PATHPOSX=200
  PATHPOSY=200
  PATHFILL="lime"
  PATHSTRK=8
  PATHCOLOR="red"
  PATHSTROKEDASHARRAY=0
  PATHSTROKEDASHOFFSET=0
  #Path Line Join: bevel miter round
  PATHLINEJOIN="bevel"
  PATHHEAD="<path d='M $PATHPOSX,$PATHPOSY "
  PATHCODE="l 250,12 l 20,100 l 40,10 l 10,100 l -20,50 l -300,10 z"
  PATHTAIL=(
    "' fill='$PATHFILL'"
    " stroke='$PATHCOLOR'"
    " stroke-width='$PATHSTRK'"
    " stroke-dasharray='$PATHSTROKEDASHARRAY'"
    " stroke-dashoffset='$PATHSTROKEDASHOFFSET'"
    "stroke-linecap='round'"
    "stroke-linejoin='$PATHLINEJOIN'"
    "paint-order='markers stroke fill'"
    "stop-color='rgb(0,0,0)'"
    "stroke-miterlimit='4'"
    " />"
  )
  PATHTAIL="${PATHTAIL[@]}"
  CODE="$CODE$PATHHEAD$PATHCODE$PATHTAIL"




  #Redraw the file after modifications:
  REDRAW

  #Display target svg:
  display /tmp/"$FNAME"

# 
#  END OF MAIN 
# 
} #END OF MAIN

MAIN

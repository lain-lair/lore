#! /usr/bin/env bash
#Sat Nov 12 05:59:46 PM -03 2022
#Generate a SVG file on /tmp from a list of path coordinates on ../imgs
#then open it with imagemagick (display) command.
#Graphics on bash! And with no browser should open on crappy machines too.

BACKGROUND="rgb($(($RANDOM%155+100)),$(($RANDOM%155+100)),$(($RANDOM%155+100)))"
STROKE1="rgb($(($RANDOM%100)),$(($RANDOM%100)),$(($RANDOM%100)))"
STROKE2="rgb($(($RANDOM%100)),$(($RANDOM%100)),$(($RANDOM%100)))"
BLACKCARDS="🂡🂢🂣🂤🂥🂦🂧🂨🂩🂪🂫🂬🂭🂮🃑🃒🃓🃔🃕🃖🃗🃘🃙🃚🃛🃜🃝🃞"
REDCARDS="🂱🂲🂳🂴🂵🂶🂷🂸🂹🂺🂻🂼🂽🂾🃁🃂🃃🃄🃅🃆🃇🃈🃉🃊🃋🃌🃍🃎"
CARDS="$BLACKCARDS$REDCARDS"
NUMCARDS=${#CARDS}
CK=()
#Cards white background constructor:
CARDBACK=(0 0 90 0 90 130 0 130)
#Cards white background position adjustment:
#A row adjustments:
A1X=65;A1Y=95
A2X=$(($A1X+150));A2Y=$A1Y
A3X=$(($A2X+150));A3Y=$A2Y
A4X=$(($A3X+150));A4Y=$A3Y
#B row adjustments:
B1X=65;B1Y=295
B2X=$(($B1X+150));B2Y=$B1Y
B3X=$(($B2X+150));B3Y=$B2Y
B4X=$(($B3X+150));B4Y=$B3Y
#C row adjustments:
C1X=65;C1Y=495
C2X=$(($C1X+150));C2Y=$C1Y
C3X=$(($C2X+150));C3Y=$C2Y
C4X=$(($C3X+150));C4Y=$C3Y
#Load the array with a card from the pile and the right color next to it:
for i in {1..12}
do
  INDICE=$RANDOM%$NUMCARDS
  if [[ $INDICE -gt 28 ]]
  then
    CARDCOLOR="red"
  else
    CARDCOLOR="black"
  fi
  CK=(${CK[@]} "${CARDS:$INDICE:1}" "$CARDCOLOR")
done
CHAR="💀"
HEAD='<svg width="1250" height="700"><polygon points="0,0 1250,0 1250,700 0,700" fill="'$BACKGROUND'"/><polygon points="'"$((${CARDBACK[0]}+$A1X)),$((${CARDBACK[1]}+$A1Y)) $((${CARDBACK[2]}+$A1X)),$((${CARDBACK[3]}+$A1Y)) $((${CARDBACK[4]}+$A1X)),$((${CARDBACK[5]}+$A1Y)) $((${CARDBACK[6]}+$A1X)),$((${CARDBACK[7]}+$A1Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$A2X)),$((${CARDBACK[1]}+$A2Y)) $((${CARDBACK[2]}+$A2X)),$((${CARDBACK[3]}+$A2Y)) $((${CARDBACK[4]}+$A2X)),$((${CARDBACK[5]}+$A2Y)) $((${CARDBACK[6]}+$A2X)),$((${CARDBACK[7]}+$A2Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$A3X)),$((${CARDBACK[1]}+$A3Y)) $((${CARDBACK[2]}+$A3X)),$((${CARDBACK[3]}+$A3Y)) $((${CARDBACK[4]}+$A3X)),$((${CARDBACK[5]}+$A3Y)) $((${CARDBACK[6]}+$A3X)),$((${CARDBACK[7]}+$A3Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$A4X)),$((${CARDBACK[1]}+$A4Y)) $((${CARDBACK[2]}+$A4X)),$((${CARDBACK[3]}+$A4Y)) $((${CARDBACK[4]}+$A4X)),$((${CARDBACK[5]}+$A4Y)) $((${CARDBACK[6]}+$A4X)),$((${CARDBACK[7]}+$A4Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$B1X)),$((${CARDBACK[1]}+$B1Y)) $((${CARDBACK[2]}+$B1X)),$((${CARDBACK[3]}+$B1Y)) $((${CARDBACK[4]}+$B1X)),$((${CARDBACK[5]}+$B1Y)) $((${CARDBACK[6]}+$B1X)),$((${CARDBACK[7]}+$B1Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$B2X)),$((${CARDBACK[1]}+$B2Y)) $((${CARDBACK[2]}+$B2X)),$((${CARDBACK[3]}+$B2Y)) $((${CARDBACK[4]}+$B2X)),$((${CARDBACK[5]}+$B2Y)) $((${CARDBACK[6]}+$B2X)),$((${CARDBACK[7]}+$B2Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$B3X)),$((${CARDBACK[1]}+$B3Y)) $((${CARDBACK[2]}+$B3X)),$((${CARDBACK[3]}+$B3Y)) $((${CARDBACK[4]}+$B3X)),$((${CARDBACK[5]}+$B3Y)) $((${CARDBACK[6]}+$B3X)),$((${CARDBACK[7]}+$B3Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$B4X)),$((${CARDBACK[1]}+$B4Y)) $((${CARDBACK[2]}+$B4X)),$((${CARDBACK[3]}+$B4Y)) $((${CARDBACK[4]}+$B4X)),$((${CARDBACK[5]}+$B4Y)) $((${CARDBACK[6]}+$B4X)),$((${CARDBACK[7]}+$B4Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$C1X)),$((${CARDBACK[1]}+$C1Y)) $((${CARDBACK[2]}+$C1X)),$((${CARDBACK[3]}+$C1Y)) $((${CARDBACK[4]}+$C1X)),$((${CARDBACK[5]}+$C1Y)) $((${CARDBACK[6]}+$C1X)),$((${CARDBACK[7]}+$C1Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$C2X)),$((${CARDBACK[1]}+$C2Y)) $((${CARDBACK[2]}+$C2X)),$((${CARDBACK[3]}+$C2Y)) $((${CARDBACK[4]}+$C2X)),$((${CARDBACK[5]}+$C2Y)) $((${CARDBACK[6]}+$C2X)),$((${CARDBACK[7]}+$C2Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$C3X)),$((${CARDBACK[1]}+$C3Y)) $((${CARDBACK[2]}+$C3X)),$((${CARDBACK[3]}+$C3Y)) $((${CARDBACK[4]}+$C3X)),$((${CARDBACK[5]}+$C3Y)) $((${CARDBACK[6]}+$C3X)),$((${CARDBACK[7]}+$C3Y))"'" fill="white" /><polygon points="'"$((${CARDBACK[0]}+$C4X)),$((${CARDBACK[1]}+$C4Y)) $((${CARDBACK[2]}+$C4X)),$((${CARDBACK[3]}+$C4Y)) $((${CARDBACK[4]}+$C4X)),$((${CARDBACK[5]}+$C4Y)) $((${CARDBACK[6]}+$C4X)),$((${CARDBACK[7]}+$C4Y))"'" fill="white" /><text x="5" y="20" fill="'${CK[1]}'" transform="scale(10)" >'${CK[0]}'</text><text x="20" y="20" fill="'${CK[3]}'" transform="scale(10)" >'${CK[2]}'</text><text x="35" y="20" fill="'${CK[5]}'" transform="scale(10)" >'${CK[4]}'</text><text x="50" y="20" fill="'${CK[7]}'" transform="scale(10)" >'${CK[6]}'</text><text x="5" y="40" fill="'${CK[9]}'" transform="scale(10)" >'${CK[8]}'</text><text x="20" y="40" fill="'${CK[11]}'" transform="scale(10)" >'${CK[10]}'</text><text x="35" y="40" fill="'${CK[13]}'" transform="scale(10)" >'${CK[12]}'</text><text x="50" y="40" fill="'${CK[15]}'" transform="scale(10)" >'${CK[14]}'</text><text x="5" y="60" fill="'${CK[17]}'" transform="scale(10)" >'${CK[16]}'</text><text x="20" y="60" fill="'${CK[19]}'" transform="scale(10)" >'${CK[18]}'</text><text x="35" y="60" fill="'${CK[21]}'" transform="scale(10)" >'${CK[20]}'</text><text x="50" y="60" fill="'${CK[23]}'" transform="scale(10)" >'${CK[22]}'</text><g transform="scale(3.7)">'
CODE=''
TAIL="<text x='137.5' y='86.5' fill='white' transform='scale(2)' >"$CHAR$CHAR$CHAR"</g></svg>"

for i in $(seq $(wc -l ../imgs/lain_rtfm.txt | cut -d ' ' -f 1))
do
  if [ $i -gt 487 ];then STROKE="$STROKE1";else STROKE="$STROKE2";fi
  CODE="${CODE}<path d='$(head -n $i ../imgs/lain_rtfm.txt | tail -n 1)' stroke='$STROKE' stroke-width='0.5' fill='none' />"
done

echo "$HEAD$CODE$TAIL" > /tmp/lain_rtfm_drew.svg
display /tmp/lain_rtfm_drew.svg

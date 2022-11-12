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
HEAD='<svg width="1250" height="700"><polygon points="0,0 1250,0 1250,700 0,700" fill="'$BACKGROUND'"/><text x="5" y="20" fill="'${CK[1]}'" transform="scale(10)" >'${CK[0]}'</text><text x="20" y="20" fill="'${CK[3]}'" transform="scale(10)" >'${CK[2]}'</text><text x="35" y="20" fill="'${CK[5]}'" transform="scale(10)" >'${CK[4]}'</text><text x="50" y="20" fill="'${CK[7]}'" transform="scale(10)" >'${CK[6]}'</text><text x="5" y="40" fill="'${CK[9]}'" transform="scale(10)" >'${CK[8]}'</text><text x="20" y="40" fill="'${CK[11]}'" transform="scale(10)" >'${CK[10]}'</text><text x="35" y="40" fill="'${CK[13]}'" transform="scale(10)" >'${CK[12]}'</text><text x="50" y="40" fill="'${CK[15]}'" transform="scale(10)" >'${CK[14]}'</text><text x="5" y="60" fill="'${CK[17]}'" transform="scale(10)" >'${CK[16]}'</text><text x="20" y="60" fill="'${CK[19]}'" transform="scale(10)" >'${CK[18]}'</text><text x="35" y="60" fill="'${CK[21]}'" transform="scale(10)" >'${CK[20]}'</text><text x="50" y="60" fill="'${CK[23]}'" transform="scale(10)" >'${CK[22]}'</text><g transform="scale(3.7)">'
CODE=''
TAIL="<text x='137.5' y='86.5' fill='white' transform='scale(2)' >"$CHAR$CHAR$CHAR"</g></svg>"

for i in $(seq $(wc -l ../imgs/lain_rtfm.txt | cut -d ' ' -f 1))
do
  if [ $i -gt 487 ];then STROKE="$STROKE1";else STROKE="$STROKE2";fi
  CODE="${CODE}<path d='$(head -n $i ../imgs/lain_rtfm.txt | tail -n 1)' stroke='$STROKE' stroke-width='0.5' fill='none' />"
done

echo "$HEAD$CODE$TAIL" > /tmp/lain_rtfm_drew.svg
display /tmp/lain_rtfm_drew.svg

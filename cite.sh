#!/bin/bash
file=$1
name="${file%.*}"
biblio=$2
if [ -f "$file" ]
then
  grep cite $file |  sed -e 's/}/}\n/g'   |  grep -o '\cite{.*}' | sed -e 's/\,/\n/g' | sed 's/cite{//g' | sed 's/}//g' | sed 's/ //g' > $name.cite
  echo '' > $name.bib
  if [ -f "$biblio" ]
  then
    cat $name.cite | while read line
    do
      sed -n "/$line/,/^}/p" $biblio >> $name.bib
    done
  else
    echo "The biblio do not exist"
  fi
else
    echo "The file do not exist"
fi

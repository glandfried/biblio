cat $1 | while read line
do
	sed -n "/$line/,/^}/p" biblio.bib | grep url | grep -o '{.*}' | sed  's/{/"/g' | sed 's/}/"/g' | xargs wget -U --adjust-extension -O download/$line
done

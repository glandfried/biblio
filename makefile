push: 
	sh notUrl.sh
	grep -v "^\s*url\s*=" biblio.bib > biblio_notUrl.bib
	git add .
	git commit -m "$(m)"
	git push origin master

pull:
	git pull origin master

biblio_notUrl.bib:
	grep -v "^\s*url\s*=" biblio.bib > biblio_notUrl.bib

down:
	sh download.sh $f

download_topic:
	sh topic.sh topic/$t
	

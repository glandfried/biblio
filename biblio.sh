echo '' > biblio.bib
for d in ./topic/* ; do
  echo "#####################" >> biblio.bib
  echo $d >> biblio.bib
  echo '' >> biblio.bib
  cat $d >> biblio.bib
  echo $d >> biblio.bib
  echo '' >> biblio.bib
  echo "#####################" >> biblio.bib
done


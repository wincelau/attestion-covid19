echo -n "prenom : " > /dev/stderr ; read prenom; echo 'export prenom="'$prenom'"'
echo -n "nom : " > /dev/stderr ; read nom ; echo 'export nom="'$nom'"'
echo -n "date de naissance (JJ/MM/AAAA): " > /dev/stderr ; read naissance_date ; echo 'export naissance_date="'$naissance_date'"'
echo -n "lieu de naissance : " > /dev/stderr ; read naissance_lieu ; echo 'export naissance_lieu="'$naissance_lieu'"'
echo -n "adresse (rue code_postal ville): " > /dev/stderr ; read adresse ; echo 'export adresse="'$adresse'"'
echo -n "motif travail (x si vrai sinon vide): " > /dev/stderr ; read motif_travail ; echo 'export motif_travail="'$motif_travail'"'
echo -n "motif courses (x si vrai sinon vide) : " > /dev/stderr ; read motif_courses ; echo 'export motif_courses="'$motif_courses'"'
echo -n "motif sante (x si vrai sinon vide) : " > /dev/stderr ; read motif_sante ; echo 'export motif_sante="'$motif_sante'"'
echo -n "motif famille (x si vrai sinon vide) : " > /dev/stderr ; read motif_famille ; echo 'export motif_famille="'$motif_famille'"'
echo -n "motif sport (x si vrai sinon vide) : " > /dev/stderr ; read motif_sport ; echo 'export motif_sport="'$motif_sport'"'
echo -n "motif judiciaire (x si vrai sinon vide) : " > /dev/stderr ; read motif_judiciaire ; echo 'export motif_judiciaire="'$motif_judiciaire'"'
echo -n "motif missions (x si vrai sinon vide) : " > /dev/stderr ; read motif_missions ; echo 'export motif_missions="'$motif_missions'"'
echo -n "lieu de signature (même ville que adresse) : " > /dev/stderr ; read fait_lieu ; echo 'export fait_lieu="'$fait_lieu'"'
echo -n "date de signature (JJ/MM/AAAA) : " > /dev/stderr ; read fait_date ; echo 'export fait_date="'$fait_date'"'
echo -n "heure de signature (06 pour 6h45) : " > /dev/stderr ; read fait_heures ; echo 'export fait_heures="'$fait_heures'"'
echo -n "minute de signature (45 pour 6h45) : " > /dev/stderr ; read fait_minutes ; echo 'export fait_minutes="'$fait_minutes'"'
echo 'export creation_date="'$fait_date'"'
echo 'export creation_heures="'$fait_heures'"'
echo 'export creation_minutes="'$fait_minutes'"'
echo -n 'export motifs_join="'
bash -c 'if test "$motif_travail" ; then echo -n "travail-"; fi ; if test "$motif_courses" ; then echo -n "courses-"; fi ;if test "$motif_sante" ; then echo -n "sante-"; fi ; if test "$motif_famille" ; then echo -n "famille-"; fi ; if test "$motif_sport" ; then echo -n "sport-"; fi ; if test "$motif_judiciaire" ; then echo -n "judiciaire-"; fi ; if test "$motif_missions" ; then echo -n "missions-"; fi ; ' | sed 's/-$/"/'
echo 

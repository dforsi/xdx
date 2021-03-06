xdx - tcp/ip DX-cluster client voor zendamateurs
================================================

Xdx is een DX-cluster programma die een lijst toont met DX berichten en 
een apart venster gebruikt voor WWV, WCY, "To ALL" en andere berichten.
Xdx is ook geschikt om met ON4KST chat te verbinden.

Wat is een DX cluster?
======================
Een DX Cluster is een manier voor zendamateurs om elkaar op de hoogte te
houden van actieve DX stations.

Gebruikers die verbonden zijn met een DX-Cluster mogen DX berichten
verzenden, persoonlijke berichten verzenden, mail verzenden en
ontvangen, opgeslagen data doorzoeken en opvragen en informatie
databases gebruiken.

Voor een lijst van DX-Clusters zie:
http://www.ng3k.com/Misc/cluster.html

ON4KST chat is meer bedoeld voor VHF en UHF operators. Het is een plek
waar zendamateurs elkaar ontmoeten voor het plannen van radio verbindingen
over lange afstanden, moonbounce en meteor scatter. Voor meer informatie
over ON4KST chat zie http://www.on4kst.com.

Commando's
==========
Hieronder enkele commando's om mee te beginnen:

announce/full 'msg': Stuur een bericht aan alle verbonden stations.
bye: Verlaat het DX Cluster.
dx 'frequency' 'callsign' 'comment': Verstuur informatie over een DX station.
show/dx: Toon opgeslagen DX berichten.

ON4KST gebruikt een subset van de DX-cluster commando's, Je kan het beste
'/help' typen nadat je verbonden bent. Alle commando's starten hier met
een '/'.

Voorbeelden van commando's
==========================
1) dx 28002.2 xz7a worked with 80m dipole!!
2) sh/dx on hf/cw 50

De meeste clusters tonen hulp door een '?' of 'help commando' te
versturen.

Roepletters en autologin
========================
De roepletters op de eerste pagina van het voorkeuren venster worden
gebruikt voor het herkennen van de DX-cluster prompt (zodat xdx het een
kleur kan geven) en voor autologin. Als je autologin aan zet kun je
commando's naar het cluster sturen. Je kunt deze invoeren in het
"Commando's" veld, gescheiden door een komma, 'set/page 0,unset beep'
zet bijvoorbeeld het pagineren en piepen uit. Je kan dit veld ook gebruik
om een wachtwoord te versturen. Er is een delay van 0,5 seconden tussen
de verschillende commando's.

Verbinding in stand houden
==========================
Wanneer je een slecht netwerk hebt en de verbinding regelmatig wordt
verbroken kan je deze optie aanzetten in het voorkeuren venster. Op deze
manier wordt elke 5 minutes een backspace naar de server gestuurd.

DX info opslaan
===============
In het voorkeuren venster kun je tevens het opslaan van berichten
aanzetten.

$HOME/.xdx/dxspots  DX spots zoals getoond in de bovenste lijst.
$HOME/.xdx/wwv      WCY/WWV berichten met propagatie info.
$HOME/.xdx/toall    Berichten zoals getoond in het text venster.
$HOME/.xdx/wx       Weer informatie.

Wanneer wwv data wordt opgeslagen zullen ook bestanden worden aangemaakt
voor elke WWV host met daarin data gescheiden door een tab. Hiervan kunnen
gemakkelijk grafieken worden gemaakt. Het formaat van dit bestand:

YYYMMDDHH	SFI	A	K	R

Waarbij SFI de 10.7 cm zonneflux index is, A en K staan voor geomagnetische
activiteit en R is het zonnevlekken getal. Een voorbeeld script voor gnuplot
staat in de xdx data directory, het toont getallen van DK0WCY. Het script
dient te worden aangeroepen met 'gnuplot wwv.gnuplot'. Een afbeelding wordt
opgeslagen in $HOME/.xdx/DK0WCY.png.

Hamlib support
==============
Wanneer je dubbel klikt op een DX bericht zal de frequentie van je
ontvanger worden ingesteld. Hiervoor heb je het rigctl hamlib programma
nodig. Tevens dien je de aanroep van rigctl in het voorkeuren venster
te wijzigen. 'rigctl -m 210 set_freq %d' zal bijvoorbeeld ID 210 gebruiken
(Kenwood TS-870), zie 'rigctl --list' voor een lijst van modellen.

Web browser and mail programma
==============================
Een URL in het text venster zal blauw worden als je je muis er naartoe
beweegt. Als je vervolgens op de link klikt zal deze worden geopend in je
web browser of mail programma (zie het voorkeuren venster):

Starten van de gnome web-browser indien op een URL wordt geklikt:
'epiphany %s'.
Starten van mozilla-mail indien op een URL wordt geklikt:
'mozilla -compose "to=%s"'.

Kleuren
=======
In het 'chat zijvenster' kun je 8 verschillende woorden invoeren om een
kleur te geven in het onderste venster. Indien je een checkbox aanzet zal alle
binnenkomende text worden doorzocht. Anders wordt alleen de text na de prompt
doorzocht. De kleuren die gebruikt worden kunnen worden ingesteld op pagina 3
van het voorkeuren venster. Je kunt checkboxen snel aan en uit zetten met de
toetsen Ctrl-1 tot Ctrl-8, springen naar de verschillende woorden kan met 
Alt-1 tot Alt-8. Alt-0 brengt je terug naar het zend widget.

Geluids-ondersteuning
=====================
Wanneer een woord een kleur krijgt, kan er ook een geluid worden afgespeeld.
Om een geluid te horen dien je een extern programma te gebruiken en dit op te
geven in de eerste pagina van het voorkeuren venster. Bijvoorbeeld 'play %s'
gebruikt play wat deel uitmaakt van sox. 'esdplay %s' gebruikt esdplay,
wat wordt gebruikt wanneer je esound in de gnome omgeving hebt gestart.

Smileys
=======
Er is ondersteuning aanwezig voor een beperkt aantal smileys in het text
venster:
:)  :-)  :))  :-))  ;)  ;-)  :(  :-(  :((  :-((

Licentie and ondersteuning
==========================
Xdx is gratis and vrijgegeven onder de GNU GPL licentie. Het programma is
geschreven door Joop Stakenborg <pg4i@amsat.org>.

Stuur SVP een berichtje als je fouten vind in het programma of als je
verbeteringen wilt.

# Cryptoparty

Am Anfang fragen, ob jmd einen Use Case für PGP hat. Wenn nicht, weglassen.

## Es gibt keine Privatsphäre mehr, es gibt nur noch digitale Selbstverteidigung

Privatsphäre im politischen Struggle
* Trennung zwischen Public and Private (Hannah Arendt) als bürgerliches Ideal
* Problem: im privaten passiert viel Unterdrückung, zB häusliche Gewalt
  * Die kleinste Zelle des Faschismus ist die Kleinfamilie
* Wir wollen uns den öffentlichen Raum erobern
  * Ich will öffentlich Kleider tragen und Leute vögeln können, die ich mag
  * Eine Hautfarbe kann man nicht im privaten verstecken
  * Wenn Löhne intransparent sind, sind Arbeitskämpfe schwierig und Gender Pay Gap die Norm

Privatsphäre ist ein Recht, dass vom Staat gewährt wird
* Rechte können gegeben und genommen werden, nur wenn man sie erkämpft, sind sie was wert
* Autoritäre Staaten neigen dazu, ungenaue Gesetzeslagen zu haben;
  dann ist jeder ein bisschen schuldig, und du kannst die verknacken,
  die zu unbequem sind (Spoiler: Leute wie wir)

Es gibt keine Privatsphäre mehr, es gibt nur noch Verschlüsselung
* Daten für sich selbst können unschuldig sein, aber wir wissen nie, was sie aussagen können, wenn man sie vernetzt
* Wir können aber versuchen, zu verschlüsseln, um zumindest direkte Kommunikation unlesbar zu machen
* Verschlüsselung macht Überwachung teurer -> encrypt everything!

## PGP - Was ist asymmetrische Verschlüsselung?

Schlüsselpaar:
* Öffentlicher Schlüssel: den brauchen andere, um Nachrichten an euch verschlüsseln zu können
* Privater Schlüssel: den nutzt ihr, um Nachrichten zu entschlüsseln, die mit eurem öffentlichen Key verschlüsselt wurden.

Alice will Bob eine Email schicken:
* Alice fragt den Keyserver nach Bobs Public Key
* Alice verschlüsselt eine Email mit Bobs und ihrem eigenen Public Key
* Alice schickt die Email zu Bob
* Bob entschlüsselt die Email mit seinem Private Key
* Alice kann die Email auch in ihrem "Gesendet"-Ordner wieder ansehen, wenn sie sie entschlüsselt

Signieren
* Mit seinem Private Key kann man eine Nachricht signieren.
* Wie eine Unterschrift, nur dass sie mathematisch sicher ist (schwer zu fälschen)
* In Estland sind kryptographische Unterschriften rechtsgültig
* Eine Signatur ist keine Verschlüsselung!

## Der Kampf um das größte Netzwerk

Netzwerkeffekte
* Email hat fast jede\*r - größter Netzwerkeffekt überhaupt
* Bei anderen Netzwerken haben fast überall Monopole die Vorherrschaft; Facebook zB ist schwer zu verweigern
* Damit gibt man Plattformen Macht; Facebook, Google/Alphabet, Microsoft, Apple und Amazon sind die Big 5, mit exorbitanter Machtkonzentration
* Für Aktivistis ist es nicht nur ethisch schwierig, diese Monopolisierung zu unterstützen, es macht uns auch angreifbar für Zensur und Überwachung
* Ich bin die Freiheit des anderen; nur wenn ich viele verschiedene Dienste benutze, erlaube ich anderen, mich so zu kontaktieren, wie sie wollen

Dezentralität
* Beispiel: Email, Jabber
* Dezentralität wirkt Monopolisierung entgegen
* Die Kontrolle liegt bei dezentralen Diensten beim Admin des Servers

## Messenger im Vergleich

Whatsapp
* ist mittlerweile end2end-encrypted
* Hat sehr viele User (aber mich zB nicht :P)
* Contra: ist nicht open Source, und damit nicht vertrauenswürdig
* Wenn Whatsapp die Verschlüsselung abschaltet, würden wir das nicht mal merken
* Contra: ist nicht dezentral; die haben die Kontrolle über die Server
* Contra: Kann auf dem Desktop nur verwendet werden, wenn ein Smartphone gleichzeitig connected ist

**Wire**
* ist end2end-encrypted und mittlerweile open Source
* sehr schön designte App
  * Linux, Windows, Mac OS, Android, iOS, und im Browser
* Contra: ist (noch) nicht dezentral

Signal
* ist end2end-encrypted und open Source
* Wird von einer spendenfinanzierten NGO entwickelt
* Boost: 100% OpenSource-Ableger, kompatibel mit Signal, gibts auf F-Droid, braucht keine Google-Services
* Contra: Kann auf dem Desktop nur verwendet werden, wenn ein Smartphone gleichzeitig connected ist
* Contra: Entwickler stellen sich gegen Dezentralität

Telegram
* ist (schlecht) end2end-encrypted und open Source
* Der Entwickler hat sich öfters gegen Bestechungsversuche etc. vom FBI gewehrt
* Contra: Desktop-Client kann nicht E2E verschlüsseln
* Contra: der Algorithmus ist echt scheiße, kommt nicht aus der kryptographischen Community;
  * evtl ist das nicht mal end2end [citation needed]

XMPP/Jabber
* ist wie Email ein Protokoll, kein Service -> dh, sehr dezentral
* Es gibt Clients für alle möglichen Plattformen, die meisten können verschlüsseln.
  * Empfohlene Clients: Gajim für Desktop, Conversations für Android
* OTR: ist ein etwas älterer Standard, bei dem Nachrichten, die während einer Sitzung geschrieben werden,
  später nicht mehr lesbar sind
  * Mittlerweile eig überall deprecated
* Omemo: ist dasselbe Protokoll wie bei Wire, Whatsapp, und Signal
* Contra: Jabbers Gruppenkonversationen sind nicht so intuitiv

Autocrypt
* Autocrypt ist ein aufkommender Standart, der Messaging auf Basis von Email und PGP erleichtert.
* Mobile Client: Deltachat (sonst noch keine)
* Der PGP-Public-Key wird im Header mitgeschickt, statt auf nem Keyserver zu liegen
* Größte Userbase der Welt: fast jede\*r benutzt Email
* Contra: Noch kaum Clients, bisher nur Deltachat als mobile client

Briar
* Scheint ganz gut end-to-end-encrypted zu sein
* Man kann Kontakte nur Face2face hinzufügen (QR-code scannen) - kann sich sicher sein, mit wem man schreibt
* Man kann sich später auch von gemeinsamen bekannten "vorstellen lassen", ohne dass man sich face2face trifft
* Sammelt keine Metadaten, weil Distributed; es gibt keinen Server
* Nur für Android
* Contra: Hoher Batterieverbrauch

## Andere Lösungen:

Privnote.com
* Man schreibt die Nachricht in die Privnote und verschickt den Link an jmd.
* Die Nachricht wird, nachdem sie entschlüsselt wird, sofort gelöscht
* Gut, um mit Leuten zu kommunizieren, die zu faul für Crypto sind
* Leider etwas aufwändig für Massenmails etc.
* Privnote ist unsicher - in den USA wurde es bereits als Beweis in Prozessen verwendet
  * Wenn man also von denen getargeted wird, lieber nicht Privnote verwenden

# Verschlüsselung von Web-Traffic

Wenn man surft, hinterlässt man auch Spuren - alles, was man 
* in ein Kommentarfeld 
* oder Passwortfeld schreibt, 
* jede Datei, die man auf eine ownCloud hochlädt...

all das ist erstmal unverschlüsselt. Es sei denn, es wird über HTTPS versendet.
Das seht ihr in der URL-Zeile, da steht am Anfang entweder
```http://example.com``` oder ```https://example.com```. Nur letzteres ist
verschlüsselt, und zwar zwischen eurem Rechner und dem Server. Wenn euer ISP
wissen will, was ihr da schreibt, guckt er in die Röhre.

Leider hat HTTPS 2 Schwächen:
* es bieten noch nicht alle Seiten an
* man landet bei manchen Seiten nicht automatisch auf der sicheren Seite.

Um letzteres zu verhindern, gibt es das praktische Browser-Plugin "HTTPS
Everywhere". Es leitet euch automatisch auf eine sichere Version der Website
um, wenn es eine gibt. 

# Festplattenverschlüsselung

Veracrypt
* Für Linux, Windows & MacOS
* Man kann entweder ne Festplatte verschlüsseln, zB ne externe oder 1 USB-Stick
* Oder man kann einen Container erstellen, der ne feste Größe (zB 10 GB) hat
* Um das zu accessen, muss man Veracrypt starten, und das Passwort angeben, dass man beim erstellen ausgewählt hat.

LUKS
* Für Linux, meistens beim installieren des Betriebssystems
* Passwort wird beim Hochfahren eingegeben - wenn man das Stromkabel rausreißt, ist alles verschlüsselt
* Hilft vor allem, wenn Rechner beschlagnahmt werden

Cryptomator
* Für Linux, Windows & MacOS
* Kleiner Container mit dynamischer Größe, wird mit einem Passwort verschlüsselt
* Um das zu accessen, muss man Cryptomator starten, und das Passwort angeben, dass man beim erstellen ausgewählt hat.

# Tails

Linux-Distribution, die für alles Tor benutzt, und gut für Anonymität ist.
Die Daten auf dem USB-Stick sind mit LUKS verschlüsselt.

Man kann sie auf einem USB-Stick installieren, und mit sich führen.
Man kann den Stick bei einem beliebigen PC anschließen, und die Hardware des PCs für Tails nutzen.
* USB-Stick an den PC anstecken
* PC rebooten, aber im Bootmenü den Tails-Stick auswählen
* Entschlüsseln & Einloggen
* Tails benutzen!

# Dinge einrichten:

Nun der praktische Teil, das tatsächliche installieren und benutzen von Verschlüsselung.

* PGP-Email
  * Thunderbird: https://www.mozilla.org/en-US/thunderbird/
  * Enigmail: In Thunderbird im Appstore
  * evtl GPG4Win (wird von Enigmail automatisch mitinstalliert)
* Android
  * Wire: Entweder im GooglePlay Store. Wenn man ein Google-freies Handy hat, gibts die apk auf https://wire.com/en/download/
  * Signal: Entweder im GooglePlay Store. Wenn man ein Google-freies Handy hat, gibts die apk auf https://signal.org/android/apk/
  * Deltachat: Auf F-Droid: https://f-droid.org/en/packages/com.b44t.messenger/
  * Briar: Entweder im GooglePlay Store oder auf F-Droid: https://briarproject.org/fdroid.html
* iOS
  * Wire: kostenlos im App Store
  * Signal: kostenlos im App Store
* Tails
  * Verifizierte .iso bereithalten
  * Developer-Fingerprint signen
* Veracrypt
  * Verifizierte Setups bereithalten
* Jabber
  * Android: **Conversations** https://conversations.im/
  * Windows/Linux: **Gajim** https://gajim.org/downloads.php?lang=en
  * Make sure to enable OMEMO to encrypt it!
  * You have to create a jabber account to use it. Just search online how to do it.

Zum Abschluss: Key-Signing-Party, trust all the fingerprints

Kurze Session: Wie verifiziere ich Checksums?


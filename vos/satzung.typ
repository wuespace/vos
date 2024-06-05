#import "@preview/delegis:0.3.0": *

#show: it => delegis(
  // Metadata
  title: "Satzung des WüSpace e. V.",
  abbreviation: "Satzung",
  resolution: "2023/MV-7 i. V. m. 2024/V-3",
  in-effect: "29.01.2024",
  draft: false,
  // Template
  logo: image("wuespace.svg", alt: "WüSpace e. V."),
  // Content
  it
)

/// Usage
//
//  "§ 123abc Section title" for a section "§ 123abc" with the title "Section title"
//  "#s~" for sentence numbers in multi-sentence paragraphs
//  (normal Typst headings) such as "= ABC" for grouping sections together
//
///

#unnumbered(level: 1, outlined: false)[Vorbemerkung]

Fußnoten dienen als redaktionelle Anmerkungen oder Interpretationshilfen und sind nicht selbst Teil der Beschlussfassung.

#v(2em)

#outline()

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}

// #unnumbered[Präambel]

// #lorem(30)

= Allgemeiner Teil

§ 1 Name und Sitz des Vereins

(1) Der Name des Vereins ist WüSpace e. V.

(2) Der Sitz des Vereins ist Würzburg.

(3) Der Verein ist in das Vereinsregister eingetragen.

§ 2 Zweck des Vereins

(1) Der Zweck des Vereins ist die Förderung von Wissenschaft, Forschung und
technischen Anwendungen im Bereich der Raumfahrt.

(2) 
#s~Der Satzungszweck wird verwirklicht insbesondere durch die Durchführung von Luft- und Raumfahrtprojekten und luft- und raumfahrtbezogenen Forschungsvorhaben, sowie der Organisation von Seminaren und Konferenzen, als auch der Partizipation an solchen.
#s~Des Weiteren dient der Verein als Kommunikationsplattform zwischen Studierenden, Interessent*innen der Industrie, Forschung und Öffentlichkeit und arbeitet mit diesen zusammen.

§ 3 Selbstlosigkeit

(1) 
Der Verein ist selbstlos tätig und verfolgt nicht in erster Linie eigenwirtschaftliche Zwecke.

(2) 
#s~Mittel des Vereins dürfen nur für die satzungsmäßigen Zwecke verwendet werden.
#s~Die Mitglieder erhalten keine Zuwendungen aus den Mitteln des Vereins.
#s~Es darf keine Person durch Ausgaben, die dem Zweck des Vereins fremd sind, oder durch unverhältnismäßig hohe Vergütungen begünstigt werden.

(3)
Der Verein verfolgt ausschließlich und unmittelbar gemeinnützige Zwecke im Sinne des Abschnitts „Steuerbegünstigte Zwecke“ der Abgabenordnung.

= Mitgliedschaft

§ 4 Mitglieder des Vereins

Mitglieder des Vereins können natürliche und juristische Personen werden, welche die Ziele des Vereins unterstützen.

§ 5 Beitritt

(1) Der Beitritt erfolgt durch ein öffentliches Formular, das durch zwei Mitglieder des Vorstandes zu unterzeichnen ist.

(2) Der Vorstand entscheidet mit einer absoluten Mehrheit über Änderungen des Status eines Mitglieds.

§ 6 Ende der Mitgliedschaft

(1)
Die Mitgliedschaft endet durch
+ Austritt des Mitgliedes,
+ Ausschluss des Mitgliedes oder
+ Tod des Mitgliedes

(2)
Der Austritt kann durch das Mitglied nur durch schriftliche Mitteilung gegenüber dem Vorstand erklärt werden.

(3)
Der Ausschluss des Mitgliedes kann durch den Vorstand beschlossen werden, wenn
+ das Mitglied gegen die Interessen des Vereins grob verstoßen hat oder
+ mit der Zahlung seiner Mitgliedsbeiträge im Rückstand ist und trotz schriftlicher Mahnung unter Androhung des Ausschlusses die Rückstände nicht gezahlt hat.

(4) Zu viel bezahlte Beiträge innerhalb von vier Wochen nach Austritt zurückerstattet.

§ 7 Arten der Mitgliedschaft

(1)
Der Verein besteht aus ordentlichen Mitgliedern, Alumni-Mitgliedern, Fördermitgliedern sowie Ehrenmitgliedern.

(2)
Die Art der Mitgliedschaft (und sämtliche Änderungen derer) ist auf dem Mitgliedschaftsantrag zu vermerken.

(3) 
Eine Änderung der Art der Mitgliedschaft kann durch das Mitglied in schriftlicher Form gegenüber dem Vorstand beantragt werden.

§ 8 Ordentliche Mitglieder

Ordentliche Mitglieder sind natürliche Personen, die aktiv am Vereinsleben teilnehmen.

§ 9 Alumni-Mitglieder

(1)
Voraussetzung für Alumni Mitglieder ist, dass sie zuvor mindestens ein Jahr als ordentliche Mitglieder im Verein aktiv gewesen sind.

(2)
Alumni-Mitglieder haben kein Stimmrecht.

§ 10 Fördermitglieder

(1)
Fördermitglieder sind natürliche oder juristische Personen, die ohne aktiv am Vereinsleben teilzunehmen, eine Mitgliedschaft zur finanziellen Förderung des Vereins und seiner Zwecke Mitglied sind.

(2)
Fördermitglieder haben kein Stimmrecht.

§ 11 Ehrenmitglieder

(1)
Auf Vorschlag des Vorstands oder eines Vereinsmitglieds kann die Mitgliederversammlung Mitglieder oder sonstige Personen, die sich um den Verein besonders verdient gemacht haben, zu Ehrenmitgliedern ernennen.

(2)
Die Ehrenmitgliedschaft kann wie andere Formen der Mitgliedschaft entsprechend den Regelungen in §~6 beendet und aberkannt werden.

(3)
Ehrenmitglieder haben kein Stimmrecht.

(4)
Ehrenmitglieder sind von der Beitragspflicht befreit.

§ 12 Mitgliedsbeiträge

(1)
Mitglieder haben, soweit nicht anders bestimmt, einen Mitgliedsbeitrag in Form eines regelmäßigen Geldbetrags zu entrichten.

(2)
Die Höhe der Mitgliedsbeiträge wird von der Mitgliederversammlung festgelegt.

(3)
Mitgliedsbeiträge werden bei Eintritt in den Verein fällig und sind für das restliche Kalenderjahr im Voraus zu begleichen.

(4)
Die Regelbelastung des Mitglieds erfolgt jeweils im Januar eines Jahres für zwölf Monate im Voraus.

(5)
Der Finanzvorstand informiert rechtzeitig über fällige Zahlungen und verschickt Mahnungen.

(6)
#s~Kommt ein Vereinsmitglied mit seinen Zahlungsverpflichtungen mehr als 14 Tage in Verzug, so stellt der Finanzvorstand eine erste Mahnung aus.
#s~Steht die Zahlung nach einer Frist von 14 Tagen weiterhin aus, so stellt der Finanzvorstand eine zweite Mahnung aus.
#s~Wird der fällige Beitrag innerhalb von weiteren 14 Tagen erneut nicht beglichen, so ist der Vorstand angehalten, über den Ausschluss des Mitglieds zu beraten.

§ 13 Umlagen

#s~Neben dem Mitgliedsbeitrag kann der Verein von seinen Mitgliedern Umlagen erheben, wenn es im Einzelfall für die wirtschaftliche Integrität des Vereins zwingend erforderlich ist.
#s~Diese Umlage ist von der Mitgliederversammlung auf Antrag des Vorstandes zu beschließen.
#s~Der Antrag muss die Erforderlichkeit erläutern.
#s~Die Umlage darf nicht höher als der 1,5 fache Jahresbeitrag sein.

= Organe des Vereins

§ 14 Organe des Vereins

Die Organe des Vereins sind der Vorstand und die Mitgliederversammlung.

= Vorstand

§ 15 Bildung des Vorstands

(1)
Der Vorstand i. S. d. §~26~BGB besteht aus
+ dem/der Vorstandsvorsitzenden,
+ dem/der Stellvertreter*in des/der Vorstandsvorsitzenden,
+ dem/der Schriftführer*in und
+ dem Finanzvorstand.

(2)
Vorstandsmitglieder müssen zum Zeitpunkt ihrer Wahl ordentliche Mitglieder des Vereins sein.

§ 16 Ehrenamtlichkeit

Der Vorstand führt die Vereinsgeschäfte ehrenamtlich.

§ 17 Vertretung des Vereins

#s~Der Verein wird durch zwei Mitglieder des Vorstands gerichtlich und außergerichtlich vertreten.
#s~Abweichend dazu kann der Vorstand mit einfacher Mehrheit beschließen, ein Vorstandsmitglied für einen bestimmten Sach- und Zeitrahmen zur alleinigen Vertretung zu ermächtigen.

§ 18 Bestellung des Vorstands

#s~Der Vorstand wird durch die Mitgliederversammlung für die Dauer von einem halben Jahr gewählt.
#s~Eine Wiederwahl ist zulässig. Die Mitglieder des Vorstands bleiben so lange im Amt, bis ein neuer Vorstand gewählt worden ist.

§ 19 Einschränkung der Vertretungsmacht

Die Vertretungsmacht des Vorstands ist mit Wirkung gegen Dritte in der Weise beschränkt, dass für Ausgaben von mehr als 5000,00 € in einer Summe die Zustimmung der Mitgliederversammlung erforderlich ist.

§ 20 Dringliche Satzungsänderungen

#s~Satzungsänderungen, die aufgrund behördlicher Vorgaben oder aufgrund der Änderung der Rechtslage erforderlich sind, kann der Vorstand vornehmen.
#s~Er hat die Mitgliederversammlung hierüber zu unterrichten.

§ 21 Geschäftsordnung des Vorstands

Der Vorstand kann sich eine Geschäftsordnung geben.

#unnumbered[§ 22\ Vertreter*innen]

Der Vorstand kann seine Vertreter*innen bestimmen und ihnen Aufgaben übertragen.

= Mitgliederversammlung

§ 23 Berufung der Mitgliederversammlung

(1)
Die Mitgliederversammlung ist zweimal jährlich durch den Vorstand einzuberufen.

(2)
Zu der Mitgliederversammlung ist mit einer Frist von zwei Wochen vor dem Termin schriftlich unter Angabe der vorläufigen Tagesordnung einzuladen.

§ 24 Aufgaben der Mitgliederversammlung

Die Mitgliederversammlung ist im Besonderen zuständig für:
+ die Entgegennahme der Vorstandsberichte
+ Entlastung des Vorstandes
+ Wahl des Vorstandes
+ Schaffung von Vereinsordnungen und deren Änderungen
+ Satzungsänderungen
+ Auflösung des Vereins
+ Festlegen der Mitgliedsbeiträge
+ Beschluss über die Erhebung einer Umlage

§ 25 Antragsfrist

(1)
Jedes Mitglied kann bis zu vier Tage vor der Mitgliederversammlung Anträge zur Tagesordnung stellen.

(2)
Zugelassene Anträge und die daraus hervorgehende Tagesordnung sind den Mitgliedern spätestens 48 Stunden vor Beginn der Mitgliederversammlung mitzuteilen.

§ 26 Initiativanträge

(1)
Die Mitgliederversammlung beschließt mit einfacher Mehrheit darüber, ob über nachträglich gestellte Anträge (Initiativanträge) beschlossen werden darf.

(2)
Anträge auf Abwahl des Vorstandes, auf Änderung oder Neufassung der Satzung sowie auf Auflösung des Vereins können nicht im Wege des Initiativantrags gestellt werden.

§ 27 Versammlungsleitung

#s~Die Mitgliederversammlung wird vom zum Beginn der Mitgliederversammlung amtierenden Vorstandsvorsitz geleitet.
#s~Bei Verhinderung übernimmt der stellvertretende Vorstandsvorsitz die Leitung.
#s~Ist auch dieser verhindert, wählt die Mitgliederversammlung eine*n Versammlungsleiter*in.

§ 28 Beschlussfassung

(1)
Beschlussfähig ist jede ordnungsgemäß berufene Mitgliederversammlung, sofern mindestens 7 stimmberechtigte Mitglieder anwesend sind.

(2)
Es wird offen abgestimmt. Auf Antrag von mindestens fünf der Anwesenden oder auf Entscheidung der Versammlungsleitung (zur Gewährleistung gesetzlicher Bestimmungen) ist geheim abzustimmen.

(3)
#s~Die Beschlüsse der Mitgliederversammlung werden mit einfacher Mehrheit gefasst.
#s~Bei Stimmgleichheit gilt ein Antrag als abgelehnt.
#s~Enthaltungen zählen wie nicht abgegebene Stimmen.

(4)
Jedes Mitglied ist stimmberechtigt, außer es gehört einer Gruppe an, die ausdrücklich vom Stimmrecht ausgeschlossen ist.

(5)
Satzungsänderungen benötigen eine 3/4 Mehrheit.

§ 29 Blockwahlen

Die Wahl des Vorstandes kann in Form einer Blockwahl durchgeführt werden; der Beschluss über das Wahlverfahren bedarf der einfachen Mehrheit der abgegebenen Stimmen.

§ 30 Wahlleitung

(1)
Die Mitgliederversammlung bestimmt ein*e Wahlleiter*in, der/die nicht dem Vorstand oder den wählbaren Kandidat*innen angehören darf.

(2)
Die Wahlleitung übernimmt die Versammlungsleitung für Beschlussfassungen, bei denen
+ bei denen Personen zu wählen sind oder
+ bei welchen der/die Versammlungsleiter*in gemäß §~34~BGB kein Stimmrecht besitzt (bspw. bei der Entlastung des Vorstandes).

(3)
Nach Abschluss der entsprechenden Abstimmung(/-en) geht die Versammlungsleitung wieder an die nach §~27 vorgesehene Versammlungsleitung zurück.

§ 31 Elektronische Abstimmungen und Wahlen

(1)
Die Nutzung elektronischer Wahl- und Abstimmungseinrichtungen ist zulässig, soweit durch die Versammlungsleitung sichergestellt wurde, dass sämtliche anwesenden stimmberechtigten Mitglieder die Möglichkeit zur Abstimmung über dieses Medium haben.

(2)
Bei elektronischen Wahl- und Abstimmungseinrichtungen ist sicherzustellen, dass die sonst für die Abstimmung geltenden Regelungen (Geheimheit bzw.  Offenheit, Stimmberechtigung) gewährleistet werden können.

§ 32 Beurkundung von Beschlüssen

(1)
Über die Mitgliederversammlung ist durch den/die Schriftführer*in oder eine*n durch die Mitgliederversammlung gewählte*n Protokollant*in ein Protokoll anzufertigen, welches die gefassten Beschlüsse wiedergibt.

(2)
Das Protokoll ist durch Protokollant*in und der die Versammlung schließenden Versammlungsleitung zu unterzeichnen.

§ 33 Kassenprüfung

(1)
#s~Die Mitgliederversammlung wählt für die Dauer eines Geschäftsjahres eine*n Kassenprüfer*in.
#s~Diese*r darf nicht dem Vorstand angehören und hat das Recht, jederzeit die Kassengeschäfte zu überprüfen.

(2)
Der/die Kassenprüfer*in erstattet der ordentlichen Mitgliederversammlung Bericht und beantragen bei ordnungsgemäß geführten Kassengeschäften die Entlastung des Vorstandes.

§ 34 Virtuelle Mitgliederversammlung

#s~Die Mitgliederversammlung kann online abgehalten werden. Der Vorstand muss dies in seiner regulären Einladung ankündigen.
#s~Findet die Versammlung online statt, üben die Vereinsmitglieder ihre Rechte durch elektronische Kommunikation aus.
#s~Alternativ können Mitglieder, denen eine Teilnahme online nicht möglich ist, ihre Stimme für Abstimmungen und Wahlen, bei denen sie stimmberechtigt sind, vor der Versammlung schriftlich dem Vorstand zukommen lassen.
#s~Die Stimme wird in dem Fall genauso gezählt, wie wenn das Mitglied diese direkt (z. B. über elektronischen Kommunikationsweg) abgegeben hätte.

§ 35 Außerordentliche Mitgliederversammlung

Eine außerordentliche Mitgliederversammlung ist durch den Vorstand einzuberufen, sofern dies im Interesse des Vereins erforderlich ist oder die Einberufung durch mindestens 20 % der Mitglieder, durch einen schriftlichen und begründeten Antrag verlangt wird.

§ 36 Geschäftsordnung der Mitgliederversammlung

Die Mitgliederversammlung kann sich eine Geschäftsordnung geben, welche den Ablauf der Versammlung festlegt.

= Schlussbestimmungen

§ 37 Vereinsordnungen

(1)
Der Vorstand sowie die Mitgliederversammlung sind ermächtigt, verbindliche Vereinsordnungen zu beschließen.

(2)
Vereinsordnungen, sowie deren Änderungen und Aufhebungen, müssen den Mitgliedern in schriftlicher Form bekannt gemacht werden.

(3)
Vereinsordnungen treten mit deren Verkündung in Kraft.

(4)
Vereinsordnungen sind nicht Bestandteil dieser Vereinssatzung und werden nicht in das Vereinsregister eingetragen.

§ 38 Datenschutz

(1)
#s~Im Rahmen der Mitgliederverwaltung werden von den Mitgliedern persönliche Daten erhoben.
#s~Mit dem Betritt eines Mitgliedes nimmt der Verein alle für die Mitgliedschaft im Verein relevanten Daten (Name, Anschrift, Geburtsdatum, Bankverbindung, E-Mail Adresse) auf.
#s~Diese Informationen werden in dem vereinseigenen EDV-System gespeichert.
#s~Jedem Vereinsmitglied wird eine Mitgliedsnummer zugeordnet.
#s~Die personenbezogenen Daten werden dabei durch geeignete technische und organisatorische Maßnahmen vor der Kenntnisnahme Dritter geschützt.

(2)
Der Verein darf Daten seiner Mitglieder auf der Homepage des Vereins veröffentlichen, wenn das Mitglied dem ausdrücklich zustimmt.

(3)
Zur Erfüllung der Zwecke und Aufgaben des Vereins werden unter Beachtung der Vorgaben der EU-Datenschutz-Grundverordnung (DS-GVO) und des (3) Bundesdatenschutzgesetzes (BDSG) personenbezogene Daten über persönliche und sachliche Verhältnisse der Mitglieder im Verein verarbeitet.

(4)
Soweit die in den jeweiligen Vorschriften beschriebenen Voraussetzungen vorliegen, hat jedes Vereinsmitglied insbesondere die folgenden Rechte:
+ das Recht auf Auskunft nach Artikel 15 DS-GVO,
+ das Recht auf Berichtigung nach Artikel 16 DS-GVO,
+ das Recht auf Löschung nach Artikel 17 DS-GVO,
+ das Recht auf Einschränkung der Verarbeitung nach Artikel 18 DS-GVO,
+ das Recht auf Datenübertragbarkeit nach Artikel 20 DS-GVO und
+ das Widerspruchsrecht nach Artikel 21 DS-GVO.

(5)
#s~Den Organen des Vereins, allen Mitarbeitern oder sonst für den Verein Tätigen ist es untersagt, personenbezogene Daten unbefugt zu anderen als dem jeweiligen Aufgabenerfüllung gehörenden Zweck zu verarbeiten, bekannt zu geben, Dritten zugänglich zu machen oder sonst zu nutzen.
#s~Diese Pflicht besteht auch über das Ausscheiden der oben genannten Personen aus dem Verein hinaus.

§ 39 E-Mail als Kommunikationsmittel

Die E-Mail ist ein gängiges Kommunikationsmittel und in ihrer Verwendung dem Brief gleichzusetzen.

§ 40 Auflösung des Vereins

(1)
#s~Der Verein kann durch den Beschluss der Mitgliederversammlung aufgelöst werden.
#s~Dieser Beschluss erfolgt einstimmig.

(2)
Bei Auflösung des Vereins oder bei Wegfall steuerbegünstigender Zwecke fällt das Vermögen des Vereins an das Zentrum für Telematik e. V., das es unmittelbar und ausschließlich für gemeinnützige, mildtätige oder kirchliche Zwecke zu verwenden hat.

§ 41 Inkrafttreten

(1)
Die Satzung ist in ihrer vorliegenden Form am 08.12.2023 von der Mitgliederversammlung beschlossen worden und tritt mit Eintragung in Kraft.

(2)
#s~Beim Inkrafttreten wird bis auf Weiteres der bisherige monatliche Mitgliedsbeitrag vom 12.06.2019 für ordentliche Mitglieder €1,- übernommen.
#s~Die weiteren Mitgliedschaftsarten bleiben bis Festsetzung ohne Beitrag.
local M = {}

M.code = "de"
M.name = "Deutsch"
M.short_name = "DE"

M.ui = {
	quarter = "Quartal %d",
	game_over_header = "GEFEUERT!",
	game_over_default_title = "Karriereende",
	game_over_default_desc = "Der Aufsichtsrat hat Sie als Geschäftsführer abberufen.",
	game_over_score = "Sie haben überstanden: %d Quartale",
	btn_revive = "Im Chefsessel bleiben (+35%)\n(Werbung ansehen)",
	btn_restart = "Neues Startup (Neustart)",
	footer_hint = "Nach links/rechts wischen oder A / D drücken",
	choice_left_default = "NEIN",
	choice_right_default = "JA"
}

M.characters = {
	hr_kristina = { name = "Kristina", sprite = "hr_kristina" },
	lead_artem = { name = "Arne", sprite = "lead_artem" },
	sales_igor = { name = "Ingo", sprite = "sales_igor" },
	investor_mark = { name = "Markus", sprite = "investor_mark" },
	zavhoz_mikhalych = { name = "Micha", sprite = "zavhoz_mikhalych" }
}

M.deaths = {
	team = {
		min = {
			title = "Massenkündigung",
			desc = "Die wichtigsten Entwickler haben gekündigt. Niemand ist übrig, um den Code zu pflegen."
		},
		max = {
			title = "Totale Anarchie",
			desc = "Endlose Urlaube und keine Deadlines mehr. Das Team liefert absolut nichts mehr ab."
		}
	},
	product = {
		min = {
			title = "Systemkollaps",
			desc = "Die Produktionsdatenbank ist irreparabel beschädigt. Kunden verlassen die Plattform in Scharen."
		},
		max = {
			title = "Perfektionismus-Falle",
			desc = "Jahre wurden für 'perfekten Code' verschwendet. Schnellere Konkurrenten haben den Markt erobert."
		}
	},
	money = {
		min = {
			title = "Insolvenz",
			desc = "Kein Cent mehr auf dem Konto. Server abgeschaltet, Gehälter können nicht gezahlt werden."
		},
		max = {
			title = "Steuerprüfung",
			desc = "Verdächtige Rekordgewinne rufen die Finanzbehörden auf den Plan. Alle Konten sind eingefroren."
		}
	},
	board = {
		min = {
			title = "Misstrauensvotum",
			desc = "Der Aufsichtsrat hat Sie einstimmig als CEO abberufen und die Vollmachten entzogen."
		},
		max = {
			title = "Unternehmensübernahme",
			desc = "Ein Großkonzern hat die Firma aufgekauft. Der Vorstand ersetzt Sie durch einen Konzernmanager."
		}
	}
}

M.cards = {
	tut_01 = {
		text = "Willkommen im Chefsessel! Sind Sie bereit, harte Entscheidungen zu treffen und Ressourcen zu verwalten?",
		left = "Ich werde ein sanfter Chef",
		right = "Das Geschäft geht vor"
	},
	tut_02 = {
		text = "Oben sehen Sie 4 Säulen: Team, Produkt, Kasse und Vorstand. Fällt ein Wert auf 0 oder erreicht 100, fliegen Sie!",
		left = "Verstanden, Balance halten",
		right = "Risiko für schnelles Wachstum"
	},
	tut_03 = {
		text = "Die Punkte über den Symbolen zeigen die Auswirkungen Ihrer Entscheidungen an. Bereit für Quartal 1?",
		left = "Umsichtiges Wachstum",
		right = "Aggressive Expansion"
	},

	quest_sec_01 = {
		text = "Eine kritische Sicherheitslücke im Zahlungsgateway wurde entdeckt. Hacker fordern Lösegeld.",
		left = "Lösegeld heimlich zahlen",
		right = "Ablehnen und Lücke schließen"
	},
	quest_sec_02_paid = {
		text = "Die Hacker haben dennoch Daten veröffentlicht und fordern mehr. Der Vorstand tobt wegen der geheimen Zahlung.",
		left = "Top-Sicherheitsprüfer anheuern",
		right = "Vorwürfe öffentlich abstreiten"
	},
	quest_sec_02_disclose = {
		text = "Die Veröffentlichung löst Panik aus. Wichtige Unternehmenskunden fordern sofortige Vertragsüberprüfungen.",
		left = "3 Gratismonate anbieten",
		right = "Auf SLA-Bedingungen bestehen"
	},
	quest_sec_03 = {
		text = "Die IT-Sicherheit besteht auf verpflichtender 2-Faktor-Authentifizierung und wöchentlichen Penetrationstests.",
		left = "Strikte Richtlinien einführen",
		right = "Flexible Regeln beibehalten"
	},
	quest_sec_04 = {
		text = "Nach der Bewältigung der Sicherheitskrise sind die Entwickler erschöpft. Die Moral muss gestärkt werden.",
		left = "Bezahlten Sonderurlaub gewähren",
		right = "Überstundenprämien auszahlen"
	},

	quest_ent_01 = {
		text = "Eine Großbank möchte einen Millionenvertrag abschließen, fordert aber eine On-Premise-Installation.",
		left = "Ablehnen: reines SaaS bleiben",
		right = "Großvertrag unterzeichnen"
	},
	quest_ent_reject = {
		text = "Der Aufsichtsrat ist enttäuscht über den entgangenen Umsatz und verlangt einen alternativen Wachstumsplan.",
		left = "Mittelstandsvertrieb ausbauen",
		right = "Betriebsausgaben senken"
	},
	quest_ent_02 = {
		text = "Die Bank fordert 100 individuelle Anpassungen. Die Weiterentwicklung unseres Kernprodukts steht still.",
		left = "Eigenes Projektteam aufstellen",
		right = "Kundenanforderungen begrenzen"
	},
	quest_ent_03 = {
		text = "Die Compliance-Prüfung der Bank bemängelt Details und droht, die nächste Tranche einzufrieren.",
		left = "Mängel sofort beheben",
		right = "Fristverlängerung verhandeln"
	},
	quest_ent_04 = {
		text = "Die erfolgreiche Einführung hat uns Türen zu weiteren Großkonzernen geöffnet.",
		left = "Voll auf Enterprise setzen",
		right = "Ausgewogenen SaaS-Fokus halten"
	},

	quest_hunt_01 = {
		text = "Ein finanzstarker Konkurrent hat ein Büro in der Nähe eröffnet und bietet unseren Entwicklern das doppelte Gehalt.",
		left = "Gehälter mit Optionen anpassen",
		right = "Auf Firmenkultur vertrauen"
	},
	quest_hunt_loss = {
		text = "Zwei Chefarchitekten haben gekündigt. Junior-Entwickler blicken im undokumentierten Legacy-Code nicht durch.",
		left = "Teure Berater engagieren",
		right = "Releases für Dokumentation stoppen"
	},
	quest_hunt_02 = {
		text = "Die Entwickler sind geblieben, aber nun fordern auch andere Abteilungen spürbare Gehaltserhöhungen.",
		left = "Gehälter für alle anheben",
		right = "Marktgegebenheiten erklären"
	},
	quest_hunt_03 = {
		text = "Die Personalkosten explodieren. Der Aufsichtsrat schlägt vor, einen Entwicklungsstandort im Ausland zu eröffnen.",
		left = "Standort im Ausland eröffnen",
		right = "Zentrale an einem Ort belassen"
	},
	quest_hunt_04 = {
		text = "Um künftige Abwerbungen zu verhindern, schlägt HR ein transparentes Karrierestufen-Modell vor.",
		left = "Stufenmodell einführen",
		right = "Flache Hierarchien beibehalten"
	},

	quest_bf_01 = {
		text = "Eine große Rabattaktion wird den Datenverkehr verzehnfachen. Unsere Server könnten unter der Last einbrechen.",
		left = "Zusatzkapazitäten anmieten",
		right = "Code ohne Kosten optimieren"
	},
	quest_bf_02_crash = {
		text = "Um Mitternacht ist die Bestelldatenbank abgestürzt! Kunden können nicht zahlen, in den Medien tobt Kritik.",
		left = "Im Notbetrieb neu starten",
		right = "Auf vollständige Reparatur warten"
	},
	quest_bf_02_stable = {
		text = "Spitzenlast ohne eine Sekunde Ausfall überstanden. Der Umsatz liegt 40% über dem Quartalsplan.",
		left = "Gewinn in Entwicklung stecken",
		right = "Dividende an Vorstand ausschütten"
	},
	quest_bf_03 = {
		text = "Während des Ansturms lief die Serverraum-Kühlung am Limit und hat Hitzeschäden erlitten.",
		left = "Industrieklimaanlage einbauen",
		right = "Provisorische Lüfter aufstellen"
	},
	quest_bf_04 = {
		text = "Nach der erfolgreichen Saison berät der Vorstand über die langfristige Infrastrukturstrategie.",
		left = "Auf Serverless-Architektur umstellen",
		right = "Eigene Server-Racks anmieten"
	},

	quest_vc_01 = {
		text = "Ein Wagniskapitalfonds bietet $5M Serie-A-Investition gegen 35% Firmenanteile und zwei Vorstandssitze.",
		left = "Ablehnen: Kontrolle behalten",
		right = "Investitionsrunde annehmen"
	},
	quest_vc_boot = {
		text = "Ohne Risikokapital müssen wir unverzüglich den operativen Breakeven erreichen.",
		left = "Preise um 30% erhöhen",
		right = "Bezahltes Consulting anbieten"
	},
	quest_vc_02 = {
		text = "Die neuen Vorstandsmitglieder fordern dreistelliges Nutzerwachstum im kommenden Quartal.",
		left = "Marketingbudget verdreifachen",
		right = "Auf organisches Wachstum setzen"
	},
	quest_vc_03 = {
		text = "Für schnelles Wachstum müssen diesen Monat 20 Spezialisten eingestellt werden. Gefahr für die Firmenkultur.",
		left = "Strenge Einstellungskriterien halten",
		right = "Onboarding-Prozess beschleunigen"
	},
	quest_vc_04 = {
		text = "Schnelles Teamwachstum führte zu Abstimmungsproblemen und Code-Konflikten.",
		left = "In autonome Squads aufteilen",
		right = "Architektur zentral steuern"
	},

	quest_auto_01 = {
		text = "Es wird vorgeschlagen, den First-Level-Kundensupport durch automatisierte Algorithmen zu ersetzen.",
		left = "Menschliche Experten behalten",
		right = "Automatisierung einführen"
	},
	quest_auto_human = {
		text = "Exzellenter persönlicher Support brachte uns Bestnoten und Branchenpreise ein.",
		left = "Als 24/7-Premiumtarif verkaufen",
		right = "Standard-Service beibehalten"
	},
	quest_auto_02 = {
		text = "Das System löst 80% der Standardtickets, macht aber Fehler bei komplexen Kundenanfragen.",
		left = "Menschliche Endprüfung einbauen",
		right = "Wissensdatenbank einschränken"
	},
	quest_auto_03 = {
		text = "Das Support-Team fürchtet drohende Entlassungen durch die Automatisierung.",
		left = "Team für QS/Produkt umschulen",
		right = "Personalbestand anpassen"
	},
	quest_auto_04 = {
		text = "Der Vorstand lobt die gesunkenen Betriebskosten durch die Automatisierung.",
		left = "Ersparnis ins Produkt investieren",
		right = "Nettogewinn verbuchen"
	},

	quest_ip_01 = {
		text = "Ein Konkurrent klagt und behauptet, unser Synchronisations-Algorithmus verletze ein altes Patent.",
		left = "Vor Gericht Patent anfechten",
		right = "Vergleich mit Lizenzzahlung schließen"
	},
	quest_ip_fight = {
		text = "Für den Prozess müssen führende Ingenieure wochenlang Gutachten und Vorkenntnis-Beweise verfassen.",
		left = "Entwickler für Klage abstellen",
		right = "Externe Gutachter beauftragen"
	},
	quest_ip_settle = {
		text = "Der Vergleich beseitigte Prozessrisiken, erfordert jedoch laufende Lizenzgebühren.",
		left = "Position gegenüber Kunden erklären",
		right = "Bedingungen vertraulich halten"
	},
	quest_ip_03 = {
		text = "Wir haben das Modul komplett neu geschrieben — es ist nun 3x schneller und völlig eigenständig.",
		left = "Schutzpatente anmelden",
		right = "Als Open-Source veröffentlichen"
	},

	quest_ref_01 = {
		text = "Technische Schulden halbieren das Entwicklungstempo. Die Entwickler fordern einen Monat für Refactoring.",
		left = "Zeit für Refactoring gewähren",
		right = "Neue Features weiter vorantreiben"
	},
	quest_ref_debt = {
		text = "Fehler im System verärgern Kunden. Der Vertrieb verbringt Zeit mit Beschwichtigung statt mit Abschlüssen.",
		left = "Notfall-Bugfix-Sprint ansetzen",
		right = "Kunden Rabatte anbieten"
	},
	quest_ref_02 = {
		text = "Während im Hintergrund optimiert wird, verlangen Kunden sichtbare Verbesserungen an der Oberfläche.",
		left = "Sprint teilen: Backend und UI",
		right = "Zuerst den Kern fertigstellen"
	},
	quest_ref_03 = {
		text = "Der Umstieg auf modulare Architektur ist abgeschlossen. Build- und Testzeiten sind drastisch gesunken.",
		left = "Continuous Delivery (CI/CD) nutzen",
		right = "Bei wöchentlichen Releases bleiben"
	},
	quest_ref_04 = {
		text = "Die Systemzuverlässigkeit ist auf Rekordniveau. Investoren loben die Produktreife.",
		left = "Auslandsexpansion vorbereiten",
		right = "Heimmarktposition stärken"
	},

	quest_off_01 = {
		text = "Der Mietvertrag läuft aus. Die Hälfte des Teams will ein modernes Büro, die andere reines Homeoffice.",
		left = "Komplett auf Remote umstellen",
		right = "Neuen Büro-Hub anmieten"
	},
	quest_off_remote = {
		text = "Reines Homeoffice spart Mietkosten, erschwert aber die teamübergreifende Abstimmung.",
		left = "Regelmäßige Abstimmungen ansetzen",
		right = "Asynchrone Workflows einführen"
	},
	quest_off_hub = {
		text = "Das neue Büro fördert den Austausch, allerdings sind die monatlichen Nebenkosten gestiegen.",
		left = "Freie Plätze untervermieten",
		right = "Platz für Wachstum behalten"
	},
	quest_off_03 = {
		text = "Der Aufsichtsrat zieht Bilanz zur Neuordnung der Arbeitsplätze.",
		left = "Dauerhaftes Hybridmodell beschließen",
		right = "Zu strenger Büropräsenz zurück"
	},

	filler_01 = {
		text = "Im Bürotrakt ist die Heizung ausgefallen. Die Raumtemperatur sinkt spürbar.",
		left = "Alle ins Homeoffice schicken",
		right = "Leistungsstarke Heizlüfter kaufen"
	},
	filler_02 = {
		text = "Mitarbeiter bitten um ergonomische Stehschreibtische zur Steigerung von Gesundheit und Produktivität.",
		left = "Ablehnen: Budget ist knapp",
		right = "Ergonomische Tische anschaffen"
	},
	filler_03 = {
		text = "Der Lieferant für Bürokaffee und Snacks hat die Preise um 30% erhöht.",
		left = "Auf Günstiganbieter umsteigen",
		right = "Gewohnte Qualität beibehalten"
	},
	filler_04 = {
		text = "Der Vermieter bietet 15% Rabatt bei einer dreijährigen Mietvertragsverlängerung an.",
		left = "Monatliche Flexibilität behalten",
		right = "3-Jahres-Vertrag unterzeichnen"
	},
	filler_05 = {
		text = "Die Laptops der Entwickler sind veraltet: Kompiliervorgänge dauern viel zu lange.",
		left = "Auf nächstes Jahr verschieben",
		right = "Neue Hardware beschaffen"
	},
	filler_06 = {
		text = "Unser Cloud-Anbieter hat eine Preiserhöhung für Speicherplatz angekündigt.",
		left = "Umzug zu anderem Anbieter prüfen",
		right = "Bleiben und Daten bereinigen"
	},
	filler_07 = {
		text = "In einer wichtigen Open-Source-Bibliothek unseres Produkts wurde eine Sicherheitslücke entdeckt.",
		left = "Eigenes Modul entwickeln",
		right = "Auf offiziellen Patch warten"
	},
	filler_08 = {
		text = "Ein Praktikant hat versehentlich ein Skript auf der Staging-Datenbank ausgeführt und Testdaten gelöscht.",
		left = "Zugriffsrechte strenger limitieren",
		right = "Gemeinsame Nachbesprechung führen"
	},
	filler_09 = {
		text = "Entwickler fordern eine geregelte Rufbereitschaftsentschädigung für Wochenend-Einsätze.",
		left = "Bereitschaftsprämie einführen",
		right = "Im Grundgehalt belassen"
	},
	filler_10 = {
		text = "Es werden strengere Code-Review-Richtlinien vorgeschlagen. Das steigert Qualität, bremst aber Releases.",
		left = "Strikte Reviews vorschreiben",
		right = "Entwicklern Freiheit lassen"
	},
	filler_11 = {
		text = "Die verwendete Datenbankversion erreicht das Support-Ende und erhält keine Sicherheitsupdates mehr.",
		left = "Versionsupgrade einplanen",
		right = "Auf nächstes Quartal verschieben"
	},
	filler_12 = {
		text = "Die Entwicklung schlägt eine verpflichtende Testabdeckung von 85% für neue Funktionen vor.",
		left = "85%-Grenze verbindlich machen",
		right = "Bisherige Tests beibehalten"
	},
	filler_13 = {
		text = "Die Inflation mindert die Kaufkraft. Das Team erwartet einen jährlichen Inflationsausgleich.",
		left = "Vollen Inflationsausgleich zahlen",
		right = "Nur leistungsbezogene Boni geben"
	},
	filler_14 = {
		text = "Eine Umfrage zeigt: 70% der Belegschaft bevorzugen ein Hybridmodell mit 2 Präsenztagen.",
		left = "Hybridmodell beschließen",
		right = "5 Tage Anwesenheit verlangen"
	},
	filler_15 = {
		text = "HR schlägt einen monatlichen Zuschuss für Sport und mentale Gesundheit der Mitarbeiter vor.",
		left = "Gesundheitsbudget einführen",
		right = "Auf direkte Boni konzentrieren"
	},
	filler_16 = {
		text = "Das Marketing schlägt eine Team-Klausurtagung vor, um die abteilungsübergreifende Zusammenarbeit zu stärken.",
		left = "Im Konferenzraum tagen",
		right = "Auswärtige Klausur genehmigen"
	},
	filler_17 = {
		text = "Produktmanagement und Vertrieb streiten über die Feature-Prioritäten des nächsten Quartals.",
		left = "Auf die Entwickler hören",
		right = "Auf den Vertrieb hören"
	},
	filler_18 = {
		text = "Technische Universitäten bieten eine Kooperation für studentische Sommerpraktika an.",
		left = "Praktikumsprogramm starten",
		right = "Nur auf Senior-Kräfte setzen"
	},
	filler_19 = {
		text = "Entwickler bitten um Reisekostenübernahme für einen Vortrag auf einer internationalen Fachkonferenz.",
		left = "Konferenzkosten übernehmen",
		right = "Antrag ablehnen"
	},
	filler_20 = {
		text = "Ein Großkunde fordert eine Vertragsstrafe von $100.000 für jede Stunde Systemausfall.",
		left = "Harte Strafklauseln ablehnen",
		right = "Für den Abschluss akzeptieren"
	},
	filler_21 = {
		text = "Messeveranstalter bieten den Status als Hauptsponsor gegen eine hohe Gebühr an.",
		left = "Standard-Messestand buchen",
		right = "Hauptsponsoring sichern"
	},
	filler_22 = {
		text = "Unser Hauptkonkurrent lockt mit 50% Rabatt auf Jahresabonnements Kunden ab.",
		left = "Preise stabil halten",
		right = "Mit Rabatten gegenhalten"
	},
	filler_23 = {
		text = "Integrationspartner fordern eine Erhöhung ihrer Vermittlungsprovision von 10% auf 20%.",
		left = "Bei 10% Provision bleiben",
		right = "Provision für Partner erhöhen"
	},
	filler_24 = {
		text = "Ein Großkunde ist seit zwei Monaten mit Rechnungen im Rückstand, nutzt den Dienst aber weiter.",
		left = "Zugang bis Zahlung sperren",
		right = "Zahlungsziel verlängern"
	},
	filler_25 = {
		text = "Der Vertrieb meldet starkes Kundeninteresse in europäischen Nachbarmärkten.",
		left = "Produkt lokalisieren & expandieren",
		right = "Auf den Heimatmarkt fokussieren"
	},
	filler_26 = {
		text = "Das Produktteam schlägt vor, den Gratis-Tarif einzuschränken, um mehr zahlende Nutzer zu gewinnen.",
		left = "Großzügigen Gratis-Tarif lassen",
		right = "Gratis-Limits herabsetzen"
	},
	filler_27 = {
		text = "Der Aufsichtsrat drängt auf eine Halbjahresdividende anstelle von Reinvestitionen in F&E.",
		left = "Aufsichtsrat von F&E überzeugen",
		right = "Dividende ausschütten"
	},
	filler_28 = {
		text = "Ein großer Technologiekonzern signalisiert informell Interesse an einer Übernahme unseres Startups.",
		left = "Sondierungsgespräche führen",
		right = "Übernahmeinteresse ablehnen"
	},
	filler_29 = {
		text = "Ein erfahrener Branchenmanager bietet an, für eine kleine Beteiligung unserem Beirat beizutreten.",
		left = "In den Beirat berufen",
		right = "Angebot ablehnen"
	},
	filler_30 = {
		text = "Die jährliche Festlegung des Bonustopfes für das Führungsteam steht an.",
		left = "Führungsboni kürzen",
		right = "Vollen Bonustopf freigeben"
	},
	filler_31 = {
		text = "Fonds-Investoren fordern einen formalen ESG-Nachhaltigkeitsbericht unseres Unternehmens.",
		left = "Standardbericht erstellen",
		right = "Umfassendes Audit durchführen"
	},
	filler_32 = {
		text = "Frühe Mitarbeiter bitten um Erlaubnis, Teile ihrer Firmenoptionen auf dem Sekundärmarkt zu verkaufen.",
		left = "Teilweisen Verkauf erlauben",
		right = "Zweitmarktverkäufe untersagen"
	},
	filler_33 = {
		text = "Ein renommiertes Wirtschaftsmagazin bittet um ein Interview zur finanziellen Stabilität der Firma.",
		left = "Ausführliches Interview geben",
		right = "Keinen Kommentar abgeben"
	},
	filler_34 = {
		text = "Der Sicherheitsdienst meldet unzugeordnete Gastkarten in den Bürozugangsprotokollen.",
		left = "Vollständiges Zugangs-Audit",
		right = "Einfache Ermahnung aussprechen"
	},
	filler_35 = {
		text = "Die Batterien der Notstromversorgung (USV) im Serverraum haben das Ende ihrer Lebensdauer erreicht.",
		left = "Neue Batterien einbauen",
		right = "Austausch verschieben"
	},
	filler_36 = {
		text = "Die IT schlägt vor, ein öffentliches Bug-Bounty-Programm für Sicherheitslücken zu starten.",
		left = "Bug-Bounty-Programm starten",
		right = "Auf interne Audits vertrauen"
	},
	filler_37 = {
		text = "Das Mitarbeiter-Empfehlungsprogramm brachte hervorragende Talente. Die Prämien sind fällig.",
		left = "Empfehlungsprämien auszahlen",
		right = "Auszahlung um einen Monat schieben"
	}
}

return M

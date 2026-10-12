local M = {}

M.code = "fr"
M.name = "Français"
M.short_name = "FR"

M.ui = {
	quarter = "Trimestre %d",
	game_over_header = "VOUS ÊTES VIRÉ !",
	game_over_default_title = "Fin de carrière",
	game_over_default_desc = "Le conseil d'administration a mis fin à vos fonctions de dirigeant.",
	game_over_score = "Vous avez survécu : %d Trimestres",
	btn_revive = "Garder le poste (+35%)\n(Regarder pub)",
	btn_restart = "Nouvelle startup (Recommencer)",
	footer_hint = "Glissez gauche/droite ou appuyez sur A / D",
	choice_left_default = "NON",
	choice_right_default = "OUI"
}

M.characters = {
	hr_kristina = { name = "Christine", sprite = "hr_kristina" },
	lead_artem = { name = "Arthur", sprite = "lead_artem" },
	sales_igor = { name = "Julien", sprite = "sales_igor" },
	investor_mark = { name = "Marc", sprite = "investor_mark" },
	zavhoz_mikhalych = { name = "Michel", sprite = "zavhoz_mikhalych" }
}

M.deaths = {
	team = {
		min = {
			title = "Démission collective",
			desc = "Les ingénieurs clés ont démissionné le même jour. Plus personne pour maintenir le code."
		},
		max = {
			title = "Anarchie totale",
			desc = "Congés illimités et plus aucune date limite. L'entreprise ne livre plus aucun produit."
		}
	},
	product = {
		min = {
			title = "Effondrement du service",
			desc = "La base de données principale est corrompue. Les clients résilient leurs abonnements."
		},
		max = {
			title = "Paralysie perfectionniste",
			desc = "Des années perdues pour du code 'parfait'. Des concurrents plus agiles ont raflé le marché."
		}
	},
	money = {
		min = {
			title = "Faillite",
			desc = "Trésorerie à sec. Les serveurs cloud sont coupés et les salaires restent impayés."
		},
		max = {
			title = "Contrôle fiscal",
			desc = "Des bénéfices suspects attirent les inspecteurs des finances. Tous les comptes sont gelés."
		}
	},
	board = {
		min = {
			title = "Motion de défiance",
			desc = "Le conseil d'administration a voté à l'unanimité votre révocation immédiate."
		},
		max = {
			title = "Rachat corporatif",
			desc = "Un grand groupe rachète l'entreprise à 100% et installe son propre dirigeant."
		}
	}
}

M.cards = {
	tut_01 = {
		text = "Bienvenue dans le fauteuil de PDG ! Êtes-vous prêt à prendre des décisions difficiles et gérer vos ressources ?",
		left = "Je serai un leader bienveillant",
		right = "Les affaires avant tout"
	},
	tut_02 = {
		text = "Au-dessus : Équipe, Produit, Trésorerie et Conseil. Si une jauge tombe à 0 ou atteint 100, vous êtes renvoyé !",
		left = "Compris, gardons l'équilibre",
		right = "Risquer le tout pour le tout"
	},
	tut_03 = {
		text = "Les points au-dessus des icônes indiquent l'impact de chaque choix. Prêt pour ce premier trimestre ?",
		left = "Croissance prudente",
		right = "Expansion agressive"
	},

	quest_sec_01 = {
		text = "Une faille critique a été trouvée dans notre passerelle de paiement. Des pirates exigent une rançon.",
		left = "Payer la rançon discrètement",
		right = "Refuser et corriger la faille"
	},
	quest_sec_02_paid = {
		text = "Les pirates ont quand même divulgué des données et en demandent plus. Le conseil est furieux du paiement secret.",
		left = "Engager des experts en sécurité",
		right = "Nier publiquement toute fuite"
	},
	quest_sec_02_disclose = {
		text = "L'annonce publique a semé la panique. Nos grands comptes exigent une révision immédiate des contrats.",
		left = "Offrir 3 mois gratuits",
		right = "Maintenir les clauses du contrat"
	},
	quest_sec_03 = {
		text = "La sécurité informatique exige l'authentification à double facteur obligatoire et des audits hebdomadaires.",
		left = "Imposer un protocole strict",
		right = "Garder des règles souples"
	},
	quest_sec_04 = {
		text = "Après la gestion de la cyberattaque, les équipes techniques sont épuisées. Le moral doit être rétabli.",
		left = "Accorder des congés payés",
		right = "Verser des primes d'astreinte"
	},

	quest_ent_01 = {
		text = "Une grande banque propose un contrat à plusieurs millions, mais exige un déploiement sur ses propres serveurs.",
		left = "Refuser : rester 100% SaaS",
		right = "Signer le contrat bancaire"
	},
	quest_ent_reject = {
		text = "Le conseil d'administration déplore le manque à gagner et réclame un plan de croissance alternatif.",
		left = "Développer le marché PME",
		right = "Réduire les dépenses d'exploitation"
	},
	quest_ent_02 = {
		text = "La banque impose 100 modifications spécifiques. Le développement de notre produit principal est bloqué.",
		left = "Créer une équipe dédiée",
		right = "Limiter les requêtes du client"
	},
	quest_ent_03 = {
		text = "L'audit de conformité de la banque soulève des réserves et menace de bloquer le prochain versement.",
		left = "Régler les réserves d'urgence",
		right = "Négocier un délai supplémentaire"
	},
	quest_ent_04 = {
		text = "Le déploiement réussi nous ouvre les portes d'autres multinationales.",
		left = "Pivoter totalement vers l'Enterprise",
		right = "Garder l'équilibre SaaS"
	},

	quest_hunt_01 = {
		text = "Un concurrent bien financé s'est installé à proximité et offre le double du salaire à nos ingénieurs clés.",
		left = "Ajuster avec des stock-options",
		right = "Miser sur la culture d'entreprise"
	},
	quest_hunt_loss = {
		text = "Deux architectes clés sont partis. Les développeurs juniors peinent à naviguer dans le code non documenté.",
		left = "Recruter des consultants experts",
		right = "Geler les sorties pour documenter"
	},
	quest_hunt_02 = {
		text = "Les ingénieurs sont restés, mais les autres départements réclament désormais une augmentation équivalente.",
		left = "Augmenter toute l'entreprise",
		right = "Expliquer la réalité du marché"
	},
	quest_hunt_03 = {
		text = "La masse salariale a bondi. Le conseil suggère d'ouvrir une antenne technique dans une région plus économique.",
		left = "Ouvrir une antenne régionale",
		right = "Garder un siège unique"
	},
	quest_hunt_04 = {
		text = "Pour éviter de nouveaux départs, les RH proposent d'instaurer une grille de progression de carrière claire.",
		left = "Mettre en place la grille",
		right = "Conserver la structure plate"
	},

	quest_bf_01 = {
		text = "Une grande campagne promotionnelle va multiplier le trafic par 10. Nos serveurs risquent de saturer.",
		left = "Louer des serveurs de réserve",
		right = "Optimiser le code sans frais"
	},
	quest_bf_02_crash = {
		text = "La base de données des paiements s'est arrêtée à minuit ! Les clients ne peuvent plus payer, les réseaux grondent.",
		left = "Redémarrer en mode dégradé",
		right = "Attendre la restauration complète"
	},
	quest_bf_02_stable = {
		text = "Le pic d'activité s'est déroulé sans aucune coupure. Le chiffre d'affaires dépasse les prévisions de 40%.",
		left = "Réinvestir le profit en R&D",
		right = "Verser des dividendes au conseil"
	},
	quest_bf_03 = {
		text = "Pendant le pic, la climatisation de la salle des serveurs a surchauffé et a subi des avaries.",
		left = "Installer une clim industrielle",
		right = "Placer des ventilateurs d'appoint"
	},
	quest_bf_04 = {
		text = "Après cette saison record, le conseil examine notre stratégie d'infrastructure à long terme.",
		left = "Migrer vers une archi Serverless",
		right = "Louer des baies dédiées"
	},

	quest_vc_01 = {
		text = "Un grand fonds d'investissement propose 5 M$ en Série A contre 35% du capital et deux sièges au conseil.",
		left = "Refuser : garder le contrôle",
		right = "Accepter la levée de fonds"
	},
	quest_vc_boot = {
		text = "Sans capital-risque, l'entreprise doit impérativement devenir rentable dès ce trimestre.",
		left = "Augmenter les prix d'abonnement",
		right = "Lancer une offre de conseil payant"
	},
	quest_vc_02 = {
		text = "Les nouveaux membres du conseil exigent une croissance à trois chiffres du nombre d'utilisateurs.",
		left = "Tripler le budget publicitaire",
		right = "Miser sur la viralité organique"
	},
	quest_vc_03 = {
		text = "Pour accélérer, nous devons recruter 20 profils ce mois-ci. Attention à ne pas diluer notre culture.",
		left = "Garder des critères stricts",
		right = "Accélérer les embauches"
	},
	quest_vc_04 = {
		text = "La croissance rapide de l'équipe engendre des frictions et des conflits sur le code source.",
		left = "Diviser en équipes autonomes",
		right = "Centraliser l'architecture"
	},

	quest_auto_01 = {
		text = "L'ingénierie propose d'automatiser le traitement initial des tickets de support client par algorithmes.",
		left = "Conserver les conseillers humains",
		right = "Déployer le support automatisé"
	},
	quest_auto_human = {
		text = "L'assistance humaine personnalisée nous a valu des prix d'excellence et la fidélité de nos clients.",
		left = "Créer une offre VIP 24/7 payante",
		right = "Garder le service standard"
	},
	quest_auto_02 = {
		text = "Le système automatique traite 80% des demandes simples mais fait des erreurs sur les cas complexes.",
		left = "Ajouter une validation humaine",
		right = "Restreindre la base de réponses"
	},
	quest_auto_03 = {
		text = "L'équipe du service client s'inquiète d'éventuels licenciements économiques.",
		left = "Reconvertir vers le test/produit",
		right = "Réduire les effectifs du support"
	},
	quest_auto_04 = {
		text = "Le conseil salue la baisse significative des coûts d'exploitation grâce à l'automatisation.",
		left = "Réinvestir les gains dans l'outil",
		right = "Encaisser les bénéfices nets"
	},

	quest_ip_01 = {
		text = "Un concurrent historique nous poursuit en justice, affirmant que notre algorithme viole son brevet.",
		left = "Contester le brevet au tribunal",
		right = "Négocier un accord de licence"
	},
	quest_ip_fight = {
		text = "Pour gagner le procès, nos meilleurs ingénieurs doivent consacrer des semaines au dossier technique.",
		left = "Mobiliser l'équipe pour le procès",
		right = "Engager des experts externes"
	},
	quest_ip_settle = {
		text = "L'accord a écarté le risque juridique, mais implique le versement de redevances régulières.",
		left = "Clarifier la situation aux clients",
		right = "Garder les termes confidentiels"
	},
	quest_ip_03 = {
		text = "Nous avons réécrit le module incriminé : il est 3 fois plus rapide et totalement propriétaire.",
		left = "Déposer des brevets défensifs",
		right = "Publier en open source"
	},

	quest_ref_01 = {
		text = "La dette technique accumulée divise par deux la vitesse de livraison. L'équipe réclame un mois de refactorisation.",
		left = "Accorder le mois de refonte",
		right = "Continuer à livrer des fonctions"
	},
	quest_ref_debt = {
		text = "Les bugs répétés provoquent des désabonnements. Les commerciaux passent leur temps à rassurer les clients.",
		left = "Sprint d'urgence correctif",
		right = "Accorder des remises commerciales"
	},
	quest_ref_02 = {
		text = "Pendant que le code est restructuré, les clients réclament des améliorations visibles sur l'interface.",
		left = "Partager l'effort : backend et UI",
		right = "Terminer le backend d'abord"
	},
	quest_ref_03 = {
		text = "La transition vers une architecture modulaire est achevée. Les temps de test et de livraison ont chuté.",
		left = "Passer au déploiement continu (CI/CD)",
		right = "Garder des versions hebdomadaires"
	},
	quest_ref_04 = {
		text = "La stabilité de notre plateforme atteint des sommets. Les investisseurs louent la maturité du produit.",
		left = "Préparer l'expansion internationale",
		right = "Renforcer notre marché national"
	},

	quest_off_01 = {
		text = "Le bail de nos bureaux expire. Une partie de l'équipe veut un siège moderne, l'autre le 100% télétravail.",
		left = "Passer au télétravail complet",
		right = "Louer un nouvel espace moderne"
	},
	quest_off_remote = {
		text = "Le télétravail complet supprime le loyer, mais complique la coordination entre départements.",
		left = "Planifier des réunions de calage",
		right = "Adopter un suivi asynchrone"
	},
	quest_off_hub = {
		text = "Le nouveau bureau renforce la cohésion, mais les frais de gestion des locaux ont augmenté.",
		left = "Sous-louer les postes vacants",
		right = "Conserver l'espace pour grandir"
	},
	quest_off_03 = {
		text = "Le conseil d'administration dresse le bilan de la réorganisation des espaces de travail.",
		left = "Valider une formule hybride fixe",
		right = "Revenir au présentiel obligatoire"
	},

	filler_01 = {
		text = "Le chauffage central du bâtiment est en panne. La température dans les bureaux chute rapidement.",
		left = "Renvoyer tout le monde en télétravail",
		right = "Acheter des radiateurs d'appoint"
	},
	filler_02 = {
		text = "Les employés demandent des bureaux ergonomiques réglables en hauteur pour améliorer leur posture.",
		left = "Refuser : budget trop serré",
		right = "Équiper les postes de travail"
	},
	filler_03 = {
		text = "Le fournisseur de café et de collations de l'espace détente augmente ses tarifs de 30%.",
		left = "Changer pour une gamme économique",
		right = "Conserver la qualité actuelle"
	},
	filler_04 = {
		text = "Le propriétaire propose 15% de réduction si nous renouvelons le bail commercial pour 3 ans.",
		left = "Garder la souplesse mensuelle",
		right = "Signer l'engagement de 3 ans"
	},
	filler_05 = {
		text = "Les ordinateurs portables des développeurs sont vieillissants : les compilations prennent trop de temps.",
		left = "Reporter à l'année prochaine",
		right = "Renouveler le matériel"
	},
	filler_06 = {
		text = "Notre fournisseur cloud annonce une hausse des prix de stockage des données.",
		left = "Préparer une migration cloud",
		right = "Rester et nettoyer les données"
	},
	filler_07 = {
		text = "Une faille de sécurité majeure a été découverte dans une bibliothèque open-source que nous utilisons.",
		left = "Développer notre propre module",
		right = "Attendre le correctif officiel"
	},
	filler_08 = {
		text = "Un stagiaire a exécuté par erreur un script sur la base de test et effacé des jeux de données.",
		left = "Restreindre les accès aux bases",
		right = "Organiser un retour d'expérience"
	},
	filler_09 = {
		text = "Les ingénieurs réclament une prime d'astreinte formelle pour les interventions le week-end.",
		left = "Instaurer une prime d'astreinte",
		right = "Maintenir dans le salaire de base"
	},
	filler_10 = {
		text = "Une politique stricte de revue de code est proposée : meilleure qualité, mais sorties ralenties.",
		left = "Imposer des revues strictes",
		right = "Laisser la liberté aux auteurs"
	},
	filler_11 = {
		text = "La version de notre moteur de base de données arrive en fin de support officiel.",
		left = "Planifier une mise à niveau propre",
		right = "Reporter au trimestre suivant"
	},
	filler_12 = {
		text = "L'équipe technique suggère d'imposer un taux minimum de 85% de couverture de tests automatisés.",
		left = "Rendre les 85% obligatoires",
		right = "Garder les tests actuels"
	},
	filler_13 = {
		text = "L'inflation réduit le pouvoir d'achat. L'équipe attend une revalorisation salariale annuelle.",
		left = "Appliquer une indexation complète",
		right = "Verser uniquement des primes KPI"
	},
	filler_14 = {
		text = "Un sondage interne montre que 70% des salariés souhaitent un rythme hybride avec 2 jours au bureau.",
		left = "Approuver le rythme hybride",
		right = "Exiger 5 jours de présence"
	},
	filler_15 = {
		text = "Les RH proposent un budget mensuel alloué au bien-être, au sport et à la santé mentale.",
		left = "Créer ce forfait bien-être",
		right = "Privilégier les primes directes"
	},
	filler_16 = {
		text = "Le marketing suggère un séminaire stratégique au vert pour renforcer les synergies entre équipes.",
		left = "Faire la réunion au bureau",
		right = "Valider le séminaire externe"
	},
	filler_17 = {
		text = "Les équipes Produit et Ventes sont en désaccord sur les priorités du prochain trimestre.",
		left = "Donner raison aux développeurs",
		right = "Donner raison aux commerciaux"
	},
	filler_18 = {
		text = "De grandes écoles d'ingénieurs proposent un partenariat pour accueillir des stagiaires d'été.",
		left = "Créer le programme de stages",
		right = "Ne recruter que des profils séniors"
	},
	filler_19 = {
		text = "Des développeurs sollicitent un financement pour intervenir lors d'une conférence technologique.",
		left = "Financer le déplacement",
		right = "Refuser la demande de budget"
	},
	filler_20 = {
		text = "Un grand compte exige une pénalité contractuelle de 100 000 $ par heure d'indisponibilité du service.",
		left = "Refuser ces pénalités lourdes",
		right = "Accepter pour signer le contrat"
	},
	filler_21 = {
		text = "Les organisateurs d'un salon professionnel nous proposent le statut de sponsor officiel.",
		left = "Se contenter d'un stand simple",
		right = "Prendre le grand parrainage"
	},
	filler_22 = {
		text = "Notre concurrent direct casse les prix avec -50% sur les abonnements annuels.",
		left = "Conserver nos prix premium",
		right = "Répliquer par des remises"
	},
	filler_23 = {
		text = "Nos partenaires intégrateurs demandent que leur commission d'apport d'affaires passe de 10% à 20%.",
		left = "Maintenir la commission à 10%",
		right = "Augmenter la part partenaire"
	},
	filler_24 = {
		text = "Un client majeur a deux mois d'impayés tout en continuant à utiliser intensivement notre service.",
		left = "Bloquer l'accès jusqu'au paiement",
		right = "Accorder un délai et dialoguer"
	},
	filler_25 = {
		text = "Les ventes constatent une forte demande entrante pour notre produit sur les marchés voisins.",
		left = "Localiser le produit et exporter",
		right = "Se concentrer sur le marché local"
	},
	filler_26 = {
		text = "L'équipe produit propose de restreindre l'offre gratuite pour inciter aux souscriptions payantes.",
		left = "Garder l'offre gratuite généreuse",
		right = "Réduire les quotas gratuits"
	},
	filler_27 = {
		text = "Le conseil d'administration pousse pour le versement d'un dividende au lieu de réinvestir en R&D.",
		left = "Convaincre le conseil de réinvestir",
		right = "Verser les dividendes"
	},
	filler_28 = {
		text = "Un groupe technologique multinational manifeste discrètement son intérêt pour racheter notre société.",
		left = "Engager des discussions exploratoires",
		right = "Décliner toute offre de rachat"
	},
	filler_29 = {
		text = "Un dirigeant chevronné du secteur propose d'intégrer notre comité consultatif contre quelques actions.",
		left = "Le nommer conseiller",
		right = "Décliner la proposition"
	},
	filler_30 = {
		text = "Le moment est venu de valider l'enveloppe annuelle des primes de la direction.",
		left = "Réduire les primes de direction",
		right = "Valider l'enveloppe complète"
	},
	filler_31 = {
		text = "Des investisseurs institutionnels réclament un audit complet de gouvernance RSE et environnementale.",
		left = "Rédiger un rapport standard",
		right = "Réaliser un audit approfondi"
	},
	filler_32 = {
		text = "Les premiers employés demandent l'autorisation de revendre une partie de leurs stock-options.",
		left = "Autoriser une cession partielle",
		right = "Interdire les ventes secondaires"
	},
	filler_33 = {
		text = "Un grand quotidien économique sollicite une interview approfondie sur notre solidité financière.",
		left = "Accorder l'interview en toute clarté",
		right = "Refuser de commenter"
	},
	filler_34 = {
		text = "Le service de sécurité a repéré des badges d'accès non attribués dans les registres d'entrée.",
		left = "Lancer un audit complet des accès",
		right = "Émettre un simple rappel à l'ordre"
	},
	filler_35 = {
		text = "Les batteries de secours de l'onduleur de la salle serveur ont atteint leur limite de durée de vie.",
		left = "Remplacer par des batteries neuves",
		right = "Reporter le remplacement"
	},
	filler_36 = {
		text = "L'équipe technique propose d'ouvrir un programme public de récompense aux bugs (Bug Bounty).",
		left = "Lancer le Bug Bounty",
		right = "Se fier aux audits internes"
	},
	filler_37 = {
		text = "Le programme de parrainage interne a permis d'embaucher d'excellents profils. Les primes sont dues.",
		left = "Verser les primes immédiatement",
		right = "Reporter le paiement au mois suivant"
	}
}

return M

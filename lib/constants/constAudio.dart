const data = [
  //TAB 0 = fr
  //TAB 1 = en
  //TAB 2 = dioula
  //TAB 3 = more (Vide car nous n'avons rien encore)
  //AU TOTAL 40

  //AUDIO 0 : Bienvenue sur wassa - Si vous voulez utiliser la commande vocale...
  {
    'audio': [
      [
        'assets/audio/fr/1.mp3', //Les deux phrases sont combinées (Bienvenue sur wassa & Si vous voulez utiliser la commande vocale...)
      ],
      [
        'assets/audio/en/51.mp3', //Welcome to wassa
        'assets/audio/en/40.mp3', //If you want to use the command voice...
      ],
      [
        'assets/audio/dioula/1.mp3', //Welcome to wassa
        'assets/audio/dioula/2.ogg', //If you want to use the command voice...
      ],
      [
        '',
      ],
    ],
  },

  //Maintenant je crois que tu as compris le principe...

  //AUDIO 1 : Pour continuer en Français dites « un » ou tapez 1
  {
    'audio': [
      [
        'assets/audio/fr/2.mp3',
      ],
      [
        'assets/audio/en/41.mp3', //To continue in English...
      ],
      [
        'assets/audio/dioula/3.ogg', //To continue in Dioula
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 2 : Avez-vous déjà un compte? - Si « oui » appuyer sur le bouton vert pour vous connecter - Si « Non », appuyer sur le bouton Rouge pour vous inscrire
  {
    'audio': [
      [
        'assets/audio/fr/2re.mp3',
      ],
      [
        'assets/audio/en/42.mp3',
        'assets/audio/en/43.mp3',
        'assets/audio/en/44.mp3',
      ],
      [
        'assets/audio/dioula/4.ogg',
        'assets/audio/dioula/5.ogg',
        'assets/audio/dioula/6.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 3 : Veuillez importer une copie de votre carte nationale d’identité ou de votre passeport
  {
    'audio': [
      [
        'assets/audio/fr/3.mp3',
      ],
      [
        'assets/audio/en/45.mp3',
      ],
      [
        'assets/audio/dioula/7.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 4 : Veuillez importer une copie de votre permis de conduire
  {
    'audio': [
      [
        'assets/audio/fr/4.mp3',
      ],
      [
        'assets/audio/en/47.mp3',
      ],
      [
        'assets/audio/dioula/8.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 5 : Veuillez importer une copie de la carte grise de votre véhicule
  {
    'audio': [
      [
        'assets/audio/fr/5.mp3',
      ],
      [
        'assets/audio/en/48.mp3',
      ],
      [
        'assets/audio/dioula/9.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 6  : Veuillez importer une copie de la visite technique à jour de votre véhicule
  {
    'audio': [
      [
        'assets/audio/fr/6.mp3',
      ],
      [
        'assets/audio/en/48.mp3',
      ],
      [
        'assets/audio/dioula/10.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 7 : Veuillez importer une copie de l’assurance à jour de votre véhicule
  {
    'audio': [
      [
        'assets/audio/fr/7.mp3',
      ],
      [
        'assets/audio/en/49.mp3',
      ],
      [
        'assets/audio/dioula/11.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 8 : Vos informations ont été bien reçues. Vous recevrez un email pour validation dans  quelques instants.
  {
    'audio': [
      [
        'assets/audio/fr/8.mp3',
      ],
      [
        'assets/audio/en/50.mp3',
      ],
      [
        'assets/audio/dioula/12.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 9 : Bienvenue sur Wassa-Wassa - Pour commander une livraison de Colis, dites « un » ou tapez 1 - Pour vous déplacer en toute sécurité, dites « deux » ou tapez 2 - Pour consulter le solde de votre compte bancaire, dites « trois » ou tapez 3
  {
    'audio': [
      [
        'assets/audio/fr/9.mp3',
        'assets/audio/fr/10.mp3',
        'assets/audio/fr/11.mp3',
        'assets/audio/fr/12.mp3',
      ],
      [
        'assets/audio/en/51.mp3',
        'assets/audio/en/52.mp3',
        'assets/audio/en/53.mp3',
        'assets/audio/en/54.mp3',
      ],
      [
        'assets/audio/dioula/1.mp3',
        'assets/audio/dioula/13.ogg',
        'assets/audio/dioula/14.ogg',
        'assets/audio/dioula/15.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 10 : Voulez-vous approvisionner  votre compte? - Si ‘Oui’ Dites « un » ou tapez 1 - Si ‘Non’, dites « deux » ou tapez 2

  {
    'audio': [
      [
        'assets/audio/fr/13.mp3',
      ],
      [
        'assets/audio/en/55.mp3',
      ],
      [
        'assets/audio/dioula/16.ogg',
        'assets/audio/dioula/17.ogg',
        'assets/audio/dioula/18.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 11 : Vous voulez recharger votre portefeuille - Pour Orange Money dites « un » ou tapez Pour Mobicash dites « deux » ou tapez 2 - Pour carte bancaire dites « trois » ou tapez 3
  {
    'audio': [
      [
        'assets/audio/fr/14.mp3',
      ],
      [
        'assets/audio/en/56.mp3',
      ],
      [
        'assets/audio/dioula/19.m4a',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 12 : Veuillez entrer le montant de la recharge et valider.
  {
    'audio': [
      [
        'assets/audio/fr/15.mp3',
      ],
      [
        'assets/audio/en/57.mp3',
      ],
      [
        'assets/audio/dioula/20.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 13 : Veuillez indiquer l’adresse de départ - destination - type de colis
  {
    'audio': [
      [
        'assets/audio/fr/16.mp3',
        'assets/audio/fr/17.mp3',
        'assets/audio/fr/18.mp3',
        'assets/audio/fr/19.mp3',
      ],
      [
        'assets/audio/en/58.mp3',
        'assets/audio/en/59.mp3',
        'assets/audio/en/60.mp3',
        'assets/audio/en/61.mp3',
        'assets/audio/en/62.mp3',
      ],
      [
        'assets/audio/dioula/21.ogg',
        'assets/audio/dioula/22.ogg',
        'assets/audio/dioula/23.ogg',
        'assets/audio/dioula/25.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 14 : Veuillez indiquer l’adresse de départ - destination - type de véhicule
  {
    'audio': [
      [
        'assets/audio/fr/26.mp3',
        'assets/audio/fr/27.mp3',
        'assets/audio/fr/28.mp3',
      ],
      [
        'assets/audio/en/69.mp3',
        'assets/audio/en/70.mp3',
        'assets/audio/en/71.mp3',
      ],
      [
        'assets/audio/dioula/32.ogg',
        'assets/audio/dioula/33.ogg',
        'assets/audio/dioula/34.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 15 : Vérifiez une dernière fois vos informations puis valider
  {
    'audio': [
      [
        'assets/audio/fr/20.mp3',
      ],
      [
        'assets/audio/en/63.mp3',
      ],
      [
        'assets/audio/dioula/26.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 16 : Recherche du coursier le plus proche
  {
    'audio': [
      [
        'assets/audio/fr/21.mp3',
      ],
      [
        'assets/audio/en/64.mp3',
      ],
      [
        'assets/audio/dioula/27.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 17 : Désolé, Il n’y a aucun coursier de disponible pour l’instant
  {
    'audio': [
      [
        'assets/audio/fr/22.mp3',
      ],
      [
        'assets/audio/en/65.mp3',
      ],
      [
        'assets/audio/dioula/28.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 18 : Votre coursier est en chemin
  {
    'audio': [
      [
        'assets/audio/fr/23.mp3',
      ],
      [
        'assets/audio/en/66.mp3',
      ],
      [
        'assets/audio/dioula/29.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 19 : Votre coursier est arrivé
  {
    'audio': [
      [
        'assets/audio/fr/24.mp3',
      ],
      [
        'assets/audio/en/67.mp3',
      ],
      [
        'assets/audio/dioula/30.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 20 : Votre colis est arrivé à destination
  {
    'audio': [
      [
        'assets/audio/fr/25.mp3',
      ],
      [
        'assets/audio/en/68.mp3',
      ],
      [
        'assets/audio/dioula/31.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 21 : Recherche du chauffeur le plus proche
  {
    'audio': [
      [
        'assets/audio/fr/30.mp3',
      ],
      [
        'assets/audio/en/73.mp3',
      ],
      [
        'assets/audio/dioula/36.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 22 : Désolé, Il n’y a aucun chauffeur de disponible pour l’instant
  {
    'audio': [
      [
        'assets/audio/fr/31.mp3',
      ],
      [
        'assets/audio/en/74.mp3',
      ],
      [
        'assets/audio/dioula/37.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 23 : Votre chauffeur est en chemin
  {
    'audio': [
      [
        'assets/audio/fr/32.mp3',
      ],
      [
        'assets/audio/en/75.mp3',
      ],
      [
        'assets/audio/dioula/38.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 24 : Votre chauffeur est arrivé
  {
    'audio': [
      [
        'assets/audio/fr/33.mp3',
      ],
      [
        'assets/audio/en/76.mp3',
      ],
      [
        'assets/audio/dioula/39.ogg',
      ],
      [
        '',
      ],
    ],
  },

  //AUDIO 25 : Vous êtes arrivé à destination
  {
    'audio': [
      [
        'assets/audio/fr/34.mp3',
      ],
      [
        'assets/audio/en/77.mp3',
      ],
      [
        'assets/audio/dioula/40.ogg',
      ],
      [
        '',
      ],
    ],
  },
];

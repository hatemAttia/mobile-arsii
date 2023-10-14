class Place {
  final String name;
  final String asset;
  final String location;
  final String rating;
 
  final String headline;
  final String desc;
  final List<String> testimonials;

  Place({
    required this.name,
    required this.asset,
    required this.location,
    required this.rating,
   
    required this.headline,
    required this.desc,
    required this.testimonials,
  });
}

final popularDestionation = [
  Place(
    name: " partenariat ARSII",
    asset: "assets/ev3.PNG",
    location: "Université de Sousse ",
    rating: "nouveau",
   
    headline: " Université de Sousse",
    desc:
        "📣 Nous avons l'insigne honneur et l'immense plaisir de vous annoncer la signature de la convention de partenariat 🤝 ✍️ entre l'#Université de #Sousse et l'Association #ARSII.Les parties partagent des objectifs similaires et souhaitent coopérer dans des domaines et intérêts réciproques en vue d’enrichir, diversifier et consolider leurs efforts notamment dans le secteur du développement des compétences des jeunes étudiants et enseignants en matière des TIC, de la recherche scientifique et l’innovation.La présente collaboration a pour objectifs :L’appui à l’organisation des manifestations scientifiques à l’échelle nationale et internationale Le renforcement de la visibilité et de rayonnement de deux parties L'amélioration des compétences des étudiants et des enseignants.Agir en tant que catalyseur de l'esprit d'entreprise et d'un renouveau économique.",
    testimonials: [
      "assets/amira.jpg",
      "assets/hattem.jpeg",
      "assets/besma.jpeg",
      "assets/sirine.jpeg",
    ],
  ),
  Place(
    name: "AI NIGHT CHALLENGE",
    asset: "assets/ev4.PNG",
    location: "Association ARSII ",
    rating: "nouveau",
    
    headline: "AI NIGHT CHALLENGE",
    desc:
        "Dans une optique de mettre à disposition les techniques issues de l’Intelligence Artificielle pour traiter les différents défis à fort impact sociétal et économique, ARSII et Novation City organisent la Nuit de l’Intelligence Artificielle “Artificial Intelligence Night Challenge” sous forme des challenges en ligne proposés par les acteurs de l’écosystème (Entreprises, Startups, ONG, Universités, Structures de recherche, etc.).",
    testimonials: [
       "assets/amira.jpg",
      "assets/hattem.jpeg",
      "assets/besma.jpeg",
      "assets/sirine.jpeg",
    ],
  ),
  Place(
    name: " partenariat ARSII",
    asset: "assets/ev2.PNG",
    location: "Polytechnique Sousse",
    rating: "nouveau",
   
    headline: "Polytechnique Sousse",
    desc:
        "Nous sommes fiers d'annoncer que L'Association ARSII - جمعية البحث العلمي والإبتكار في الإعلامية et L/Ecole Polytechnique Sousse ont signé un accord de partenariat  visant à la coopération dans les domaines et intérêts réciproques en vue d’enrichir  diversifier et consolider leurs efforts notamment dans le secteur du développement des compétences des jeunes étudiants et enseignants en matière des TIC  de la valorisation de la recherche scientifique et l’innovation Les prémices d un partenariat durable dont l ambition est  également  d ouvrir la voie à de futures pistes de collaboration à léchelle internationale " ,
    testimonials: [
      "assets/amira.jpg",
      "assets/hattem.jpeg",
      "assets/besma.jpeg",
      "assets/sirine.jpeg",
    ],
  ),

  Place(
    name: "SECOND EDITION",
    asset: "assets/ev1.PNG",
    location: "Sousse, Tunisia",
    rating: "nouveau",
   
    headline: "AI Night Challenge - Second Edition",
    desc:
        
"🔊Our Second Edition of AI Night Challenge is on 🟢 🥳🥳!It’s a chance to enhance your skills in the Artificial Intelligence field and surround yourself with expertise to dig deeper in your project ideas 🤩"

 ,
    testimonials: [
       "assets/sirine.jpeg",
      "assets/hattem.jpeg",
      "assets/amira.jpg",
      "assets/besma.jpeg",
    ],
  ),
];

final specialForYou = popularDestionation.reversed.toList();

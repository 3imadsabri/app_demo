const RE_DATA = [
  {
    "image": "assets/images/image1.jpg",
    "amount": 1500,
    "name": "LES JARDINS DE LA MÉDINA",
    "address": "21, derb Chtouka, Kasbah Marrakech",
    "description":
        "Ouvrez la porte, vous êtes ailleurs.... A quelques minutes à peine de l’aéroport, et à proximité de la place Jemma El Fna et des principaux sites touristiques,(tombeaux Saadiens, Palais de la Bahia, Palais Badi), poussez la porte des Jardins de la Médina pour une escale de charme au coeur d’un ancien palais princier. Authentique riad marocaindu 19ème siècle, ce jardin d’Eden est un oasis luxuriant de 3000 m2, unique dans la Médina. Entre ombre et lumière, fraîcheur et chaleur, palmiers centenaires, orangers bigaradiers, oliviers et jacarandas, terrasses, fontaines et balcons fleuris, les senteurs du jasmin répondent au chant des tourterelles. Sérénité, intimité, exotisme vous invitent à un voyage romantique. L’alliance réussie de la tradition et de la modernité, l’atmosphère relaxante et le confort feutré, le personnel attentionné, feront de votre séjour une parenthèse hors du temps où tout vous semblera simple et léger.."
  },
  {
    "image": "assets/images/image2.jpg",
    "name": "PALAIS NAMASKAR",
    "amount": 490,
    "address": "Route de Bab Atlas Marrakech",
    "description":
        "Inauguré en 2012, c'est un des plus beaux hôtels du Maroc et probablement le plus bel hôtel de Marrakech. Il a reçu de nombreuses récompenses en ce sens et a été désigné « Meilleur Hôtel d'Afrique » par le prix Villégiature en octobre 2014. Le Palais Namaskar offre plus de 5 hectares de jardins dans un décor balinais, largement inspiré de l’architecture Feng Shui avec des cascades, des lacs, et des touches subtiles d’art mauresque. Une adéquation sublime entre l’architecture orientale et une décoration plus contemporaine. Le Palais Namaskar dispose de 41 unités, comprenant 14 chambres, 15 suites, 10 villas et 2 palais. Notre coup de cœur va aux villas qui sont un bijou de design et de confort, disposant notamment toutes d'une piscine privée avec eau chauffée qui vous donnera l'impression d'être une star hollywoodienne."
  },
  {
    "image": "assets/images/image3.jpg",
    "name": "LE RIAD MONCEAU",
    "amount": 1600,
    "address": "63, derb Jamaa- Riad Zitoun Lakdim Marrakech",
    "description":
        "Une maison du XVIII siècle bourrée de charme à deux pas de la place avec une piscine et des cours de cuisine : c'est le Riad Monceau. Ce riad vous garantit un séjour des plus romantiques. Une fois la lourde porte en bois franchie, vous serez accueilli dans un patio arboré de palmiers entourant un superbe bassin piscine. Les dix chambres détiennent toutes une atmosphère aussi singulière que raffinée. La terrasse superbement aménagée en rotin et fer forgé dispose d’un solarium surplombant les toits de la ville. A La Pergola, sur le rooftop, vous pourrez goûter une cuisine marocaine décalée comme le hamburger à la tanjia ou encore un tajine à la tomate caramélisée au sésame",
  },
];
const RESTAURANT_DATA = [
  {
    "image": "assets/images/restaurant1.jpg",
    "amount": 1500,
    "name": "CAFÉ ARABE",
    "address": "184, rue El Mouassine - Marrakech",
    "description":
        "Dans un quartier très prisé de la médina de Marrakech, ce joli et spacieux riad coloré est un lieu où se restaurent tous les voyageurs du Maroc à la recherche d'exotisme ainsi que les habitués du quartier. On y propose différentes formules: déjeuner, dîner, salon de thé ainsi qu'une carte simple où se mêlent cuisine marocaine et italienne."
  },
  {
    "image": "assets/images/restaurant2.jpg",
    "name": "DAR ESSALAM ",
    "amount": 490,
    "address": "170, riad Zitoun Lakdim - Marrakech",
    "description": "Dégustez une cuisine traditionnelle marocaine de qualité."
  },
];
const ACTIVITE_DATA = [
  {
    "image": "assets/images/safari.jpg",
    "amount": 1500,
    "name": " Safari privé en quad",
    "description":
        "A la recherche d'aventures, ce circuit est fait pour vous. Explorez les sites ruraux de Grove Palm Marrakech dans une façon amusante et sur un vélo quad rythme rapide."
  },
  {
    "image": "assets/images/excursion.jpg",
    "amount": 1500,
    "name": "La découverte du massif de l'Atlas",
    "description":
        "Partez à la découverte du massif de l'Atlas au Maroc, et passez la journée à explorer les trois vallées lors de cette excursion privée d'une journée complète."
  },
];
const SECTEUR_DATA = [
  {
    "image": "assets/images/offshoring.jpg",
    "amount": 1500,
    "address": "offshoring",
    "description":
        "Projet de développement d'une zone dédiée aux services délocalisés et d'un parc académique et technologique : Marrakech shore & projet d'aménagement d'un quartier d'affaires)."
  },
  {
    "image": "assets/images/agropole.jpg",
    "name": "Agroalimentaire ",
    "amount": 490,
    "address": "170, riad Zitoun Lakdim - Marrakech",
    "description":
        "Projet de création de zone industrielle dédiée à l'agroalimentaire : agropole Al Haouz.."
  },
];
const VISITER_DATA = [
  {
    "image": "assets/images/Jemaa-el-Fna.jpg",
    "amount": 1500,
    "name": "La place Jemaa el-Fna",
    "description":
        " Inscrite au Patrimoine mondial de l'UNESCO, la place Jemaa el-Fna est avant tout la place la plus célèbre de Marrakech. Située au cœur de la médina, c’est un lieu de rencontre animé de jour comme de nuit !"
  },
  {
    "image": "assets/images/jardin.jpg",
    "name": "JARDIN MAJORELLE",
    "amount": 490,
    "description":
        "Afin de profiter au mieux de votre visite au Jardin Majorelle, nous vous recommandons de réserver votre créneau horaire via notre billetterie en ligne. Prière de noter que les billets peuvent également être acquis auprès de la billetterie du Jardin Majorelle durant les heures d’ouverture, du lundi au dimanche, de 11 à 17 heures; dernière accès à 16 heures 30. Contact : +212 5 24 29 86 86."
  },
];
const TRANSPORT_DATA = [
  {
    "image": "assets/images/bus.jpg",
    "name": "Bus à Marrakech",
    "description":
        " INFORMATION DE LIGNE sur : https://www.alsa.ma/marrakech/lignes"
  },
  {
    "image": "assets/images/taxi.jpg",
    "amount": 1500,
    "name": "TAXI VERT",
    "description": " Contact : +212 5 24 29 86 86."
  },
];
const SHOPPING_DATA = [
  {
    "image": "assets/images/menaraMall.jpg",
    "amount": 1500,
    "name": "Menara Mall",
    "address": "Avenue Mohammed VI Marrakech",
    "description":
        "Près de 90 boutiques vous attendent, proposant des marques internationales de renom, Parfums et Cosmétiques, Chaussures, Vêtements, Gadgets et Souvenirs, Bijoux, Lunettes ou encore Magasin de Sport."
  },
  {
    "image": "assets/images/AlMazar.png",
    "name": "Al Mazar",
    "address": "Route de l'Ourika, Aguedal ",
    "description":
        " Des chaussures, vêtements et accessoires...tellement d'univers à découvrir à Almazar."
  },
  {
    "image": "assets/images/CarreEden.jpg",
    "name": "Carre Eden",
    "amount": 1600,
    "address": "Boulevard Mohammed V GUELIZ Marrakech",
    "description":
        "Découvrez votre centre commercial à Marrakech Carré Eden Shopping Center. Fashion, bien être et restauration !"
  }
];

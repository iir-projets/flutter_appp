class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'La sauge',
        plantName: 'Salvia officinale',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/sauge.jpg',
        isFavorated: true,
        decription:
            'La sauge officinale est une plante vivace rustique, pouvant aller jusqu’à 80cm en tous sens. Elle porte des feuilles ovales, gris-vert et duveteuses. Au froissement, elles dégagent une puissante odeur camphrée. En été apparaissent des épis bleu violacé.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Les menthes',
        plantName: 'menthe',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/menthe.jpg',
        isFavorated: false,
        decription: '',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'La lavande',
        plantName: 'Lavandula angustifolia ou officinalis',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/lavande.jpg',
        isFavorated: false,
        decription:
            'La lavande exerce une action antiseptique et cicatrisante, notamment en usage externe sous forme de préparations à base d’huile essentielle. Prise en tisane, la lavande est sédative, antispasmodique et stomachique, elle favorise la digestion tout en calmant d’éventuelles douleurs d’estomac ou des intestins. Cette tisane est absolument délicieuse !',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'La guimauve',
        plantName: 'Althaea officinalis',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/guimauve.jpg',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'Le romarin ',
        plantName: 'Rosmarinus officinalis',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/romarin.jpg',
        isFavorated: true,
        decription:
            'Le romarin est un arbrisseau toujours vert dont le feuillage persistant est aromatique. Sa floraison a lieu dès la fin de l’hiver avec une remontée en automne en région méditerranéenne, plutôt au printemps au nord de la Loire.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'L’origan',
        plantName: 'origanum vulgare',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/origan.jpg',
        isFavorated: false,
        decription:
            'L’origan ou marjolaine sauvage est une plante vivace qui forme une touffe fortement aromatique d’environ 50cm en tous sens. L’été voit apparaître de jolies fleurs roses pourprées à l’extrémité des pousses. L’origan est parfaitement rustique et facile à cultiver.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Le millepertuis',
        plantName: 'Hypericum perforatum',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/millepertuis.jpg',
        isFavorated: false,
        decription:
            'Le millepertuis se caractérise par des tiges solides, rougeâtres dont l’extrémité ramifiée porte de nombreuses fleurs jaunes étoilées en été. Par transparence, les feuilles apparaissent criblées de trous qui sont des poches contenant des essences. Selon la richesse de la terre, la plante mesure de 30 à 80cm de haut.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'La sarriette des montagnes',
        plantName: 'Satureja montana',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/sarriette.jpg',
        isFavorated: false,
        decription:
            'Sous-arbrisseaux habillés de petites feuilles sombres, persistantes et aromatiques, disparaissant sous une nuée de fleurs blanches au printemps et en été. Elle forme une touffe ligneuse de 30 à 40cm en tous sens.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'La valériane',
        plantName: 'Valeriana officinalis',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/valeriane-officinale.jpg',
        isFavorated: false,
        decription:
            'La valériane est une vivace dont les tiges cannelées peuvent atteindre 2 m de haut. En été, s’épanouissent des fleurs rose pâle à l’extrémité des hampes florales. Les feuilles sont fortement découpées, vert sombre et aromatiques.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}

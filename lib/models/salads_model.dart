class Salad {
  int? id;
  String? name;
  String? countName;
  String? imageUrl;
  String? time;
  String? cost;
  int? bannerColor;
  String? ingredient;

  Salad({
    this.id,
    this.name,
    this.countName,
    this.imageUrl,
    this.time,
    this.cost,
    this.bannerColor,
    this.ingredient
  });
  static List<Salad> salads = [
    Salad(
        id: 1,
        name: "Lagmonli salat ",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_1.png",
        time: "20 мин",
        cost: "35 000 минг",
        bannerColor: 0xffF2DFE1,
        ingredient: "5 инг"
    ),
    Salad(
        id: 2,
        name: "Mevali salat",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_2.png",
        time: "20 мин",
        cost: "60 000 минг",
        bannerColor: 0xffDCC7B1,
        ingredient: "6 инг"
    ),
    Salad(
        id: 3,
        name: "Osimlikli salad",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_3.png",
        time: "25 мин",
        cost: "20 000 минг",
        bannerColor: 0xffFFC5A8,
        ingredient: "7 инг"
    ),
    Salad(
        id: 4,
        name: "Mevali salat 2",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_4.png",
        time: "15 мин",
        cost: "40 000 минг",
        bannerColor: 0xff71C3A1,
        ingredient: "4 инг"
    ),
    Salad(
        id: 5,
        name: "Nohotli salat",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_5.png",
        time: "10 мин",
        cost: "54 000 минг",
        bannerColor: 0xffA8B6FF,
        ingredient: "8 инг"
    ),
    Salad(
        id: 6,
        name: "Pamildori va bodringli salat",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_6.png",
        time: "25 мин",
        cost: "20 000 минг",
        bannerColor: 0xffFFE7A8,
        ingredient: "2 инг"
    ),
    Salad(
        id: 1,
        name: "Kivili salat ",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_7.png",
        time: "20 мин",
        cost: "60 000 минг",
        bannerColor: 0xffCEA8FF,
        ingredient: "5 инг"
    ),
    Salad(
        id: 1,
        name: "Kivi va qulpnayli salat",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_8.png",
        time: "20 мин",
        cost: "44 000 минг",
        bannerColor: 0xffA8FFB1,
        ingredient: "5 инг"
    ),
    Salad(
        id: 1,
        name: "Penchuza",
        countName: "Uzbekistan",
        imageUrl: "assets/saladsImages/salad_9.png",
        time: "20 мин",
        cost: "46 000 минг",
        bannerColor: 0xffFFA8A8,
        ingredient: "5 инг"
    ),

  ];

}
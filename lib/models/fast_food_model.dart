class FastFood {
  int? id;
  String? name;
  String? countName;
  String? imageUrl;
  String? time;
  String? cost;
  int? bannerColor;
  String? ingredient;

  FastFood({
    this.id,
    this.name,
    this.countName,
    this.imageUrl,
    this.time,
    this.cost,
    this.bannerColor,
    this.ingredient
  });
  static List<FastFood> fastFoods = [
    FastFood(
        id: 1,
        name: "Cheeps",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/cheeps.png",
        time: "10 мин",
        cost: "15 000 минг",
        bannerColor: 0xffF2DFE1,
        ingredient: "5 инг"
    ),
    FastFood(
        id: 2,
        name: "Cheeps va hammurger",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/cheeps_hum.png",
        time: "15 мин",
        cost: "45 000 минг",
        bannerColor: 0xffDCC7B1,
        ingredient: "3 инг"
    ),
    FastFood(
        id: 3,
        name: "Hamburger",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/hamburgar.png",
        time: "5 мин",
        cost: "20 000 минг",
        bannerColor: 0xffFFC5A8,
        ingredient: "7 инг"
    ),
    FastFood(
        id: 4,
        name: "Hamburger goshtli",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/hamburger_1.png",
        time: "5 мин",
        cost: "25 000 минг",
        bannerColor: 0xff71C3A1,
        ingredient: "4 инг"
    ),
    FastFood(
        id: 5,
        name: "Hod dog",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/hod_dog.png",
        time: "10 мин",
        cost: "10 000 минг",
        bannerColor: 0xffA8B6FF,
        ingredient: "8 инг"
    ),
    FastFood(
        id: 6,
        name: "Kief see",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/kifsi.png",
        time: "20 мин",
        cost: "45 000 минг",
        bannerColor: 0xffFFE7A8,
        ingredient: "4 инг"
    ),
    FastFood(
        id: 1,
        name: "Шашлык бараньих ребрышек",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/cheeps.png",
        time: "20 мин",
        cost: "904 000 минг",
        bannerColor: 0xffCEA8FF,
        ingredient: "5 инг"
    ),
    FastFood(
        id: 1,
        name: "Lavash",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/lavash.png",
        time: "20 мин",
        cost: "30 000 минг",
        bannerColor: 0xffA8FFB1,
        ingredient: "5 инг"
    ),
    FastFood(
        id: 1,
        name: "Pizza",
        countName: "Uzbekistan fast food taomi",
        imageUrl: "assets/fastFoodImage/pizza.png",
        time: "20 мин",
        cost: "90 000 минг",
        bannerColor: 0xffFFA8A8,
        ingredient: "5 инг"
    ),

  ];

}
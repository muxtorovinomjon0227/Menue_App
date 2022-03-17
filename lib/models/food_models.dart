class Food {
  int? id;
  String? name;
  String? countName;
  String? imageUrl;
  String? time;
  String? cost;
  int? bannerColor;
  String? ingredient;

  Food({
    this.id,
    this.name,
    this.countName,
    this.imageUrl,
    this.time,
    this.cost,
    this.bannerColor,
    this.ingredient
});
  static List<Food> foods = [
    Food(
      id: 1,
      name: "Шашлык бараньих ребрышек",
      countName: "Кавказская",
      imageUrl: "assets/images/lagmon.png",
      time: "20 мин",
      cost: "904 000 минг",
      bannerColor: 0xffF2DFE1,
      ingredient: "5 инг"
    ),
    Food(
        id: 2,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/cheeps.png",
        time: "20 мин",
        cost: "1 000 000 минг",
        bannerColor: 0xffDCC7B1,
        ingredient: "6 инг"
    ),
    Food(
        id: 3,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/lagmon.png",
        time: "25 мин",
        cost: "800 000 минг",
        bannerColor: 0xffFFC5A8,
        ingredient: "7 инг"
    ),
    Food(
        id: 4,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/keepsi.png",
        time: "15 мин",
        cost: "700 000 минг",
        bannerColor: 0xff71C3A1,
        ingredient: "4 инг"
    ),
    Food(
        id: 5,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/cabbage_meat.png",
        time: "10 мин",
        cost: "850 000 минг",
        bannerColor: 0xffA8B6FF,
        ingredient: "8 инг"
    ),
    Food(
        id: 6,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/rice_meal.png",
        time: "25 мин",
        cost: "750 000 минг",
        bannerColor: 0xffFFE7A8,
        ingredient: "2 инг"
    ),
    Food(
        id: 1,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/lagmon_free.png",
        time: "20 мин",
        cost: "904 000 минг",
        bannerColor: 0xffCEA8FF,
        ingredient: "5 инг"
    ),
    Food(
        id: 1,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/rise_sup.png",
        time: "20 мин",
        cost: "904 000 минг",
        bannerColor: 0xffA8FFB1,
        ingredient: "5 инг"
    ),
    Food(
        id: 1,
        name: "Шашлык бараньих ребрышек",
        countName: "Кавказская",
        imageUrl: "assets/images/lagmon_soup.png",
        time: "20 мин",
        cost: "904 000 минг",
        bannerColor: 0xffFFA8A8,
        ingredient: "5 инг"
    ),

  ];

}
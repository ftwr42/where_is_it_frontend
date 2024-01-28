class StoreModel {
  static List<StoreModel> models = [
    StoreModel(name: "Store West", id: "westid", shortDescription: "store in the west"),
    StoreModel(name: "Store North", id: "northid", shortDescription: "store in the north"),
    StoreModel(name: "Store East", id: "eastid", shortDescription: "store in the east"),
  ];
  static StoreModel current = models[0];

  StoreModel({this.name = "name", this.id = "id", this.shortDescription = "description"});

  String name = "";
  String id = "";
  String shortDescription = "";
}

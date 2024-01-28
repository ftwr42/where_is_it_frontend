import 'package:get/get.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/generated/assets.dart';

class ExplorerController extends RxController {
  RxList<GridElementModel> _gridElements = RxList([
    GridElementModel(Assets.imagesHundebox1,
        type: "container",
        name: "BigBox",
        shortDescription: "Für einen großen Hund",
        isinid: 'storea'),
    GridElementModel(Assets.imagesHundebox2,
        type: "container",
        name: "SmallBox",
        shortDescription: "Für einen kleinen Hund",
        isinid: 'storea'),
    GridElementModel(Assets.imagesHundSchwarz,
        type: "item", name: "Hund", shortDescription: "Schwarzer kleiner Hund", isinid: 'storea'),
    GridElementModel(Assets.imagesHundWeis,
        type: "item", name: "Hund", shortDescription: "Weißer kleiner Hund", isinid: 'storea'),
    GridElementModel(Assets.imagesKatze,
        type: "item", name: "Katze", shortDescription: "Ideal für youtube", isinid: 'storea'),
    GridElementModel(Assets.imagesMaus,
        type: "item", name: "Maus", shortDescription: "Futter für die Katze", isinid: 'storea'),
  ]);

  RxList<GridElementModel> get getGridElements => _gridElements;

  void addGridModel(GridElementModel model) {
    _gridElements.add(model);
    _gridElements.refresh();
  }

  void changeGridElementModel() {
    _gridElements.refresh();
  }
}

import 'package:get/get.dart';
import 'package:where_is_it/aa_home/explorer/elements/grid_container/grid_container_model.dart';

class ExplorerController extends RxController {
  RxList<GridElementModel> _gridElements = RxList([
    GridElementModel(type: "container", name: "BigBox", shortDescription: "Für einen großen Hund"),
    GridElementModel(
        type: "container", name: "SmallBox", shortDescription: "Für einen kleinen Hund"),
    GridElementModel(type: "item", name: "Hund", shortDescription: "Schwarzer kleiner Hund"),
    GridElementModel(type: "item", name: "Hund", shortDescription: "Weißer großer Hund"),
    GridElementModel(type: "item", name: "Katze", shortDescription: "Ideal für youtube"),
    GridElementModel(type: "item", name: "Maus", shortDescription: "Futter für die Katze"),
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

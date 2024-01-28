import 'package:get/get.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';

class GridElementController extends RxController {
  var _gridElementModel = GridElementModel("").obs;
  GridElementModel get getElementModel => _gridElementModel.value;

  void change() {
    _gridElementModel.refresh();
  }
}

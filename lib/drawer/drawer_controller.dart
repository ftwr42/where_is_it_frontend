import 'package:get/get.dart';
import 'package:where_is_it/aa_model/profile_model.dart';
import 'package:where_is_it/aa_model/store_model.dart';

class WiiDrawerController extends RxController {
  var _profile = ProfileModel().obs;

  ProfileModel get getProfileModel => _profile.value;

  void setProfileModel(ProfileModel model) {
    _profile.value = model;
    _profile.refresh();
  }

  // RxList<Map<String, dynamic>> _stores = RxList(
  //   [
  //     {"name": "Store West", "id": "westid", "shortdescription": "store in the west"},
  //     {"name": "Store Nort", "id": "northid", "shortdescription": "store in the north"},
  //     {"name": "Store East", "id": "eastid", "shortdescription": "store in the east"},
  //   ],
  // );

  RxString activeStore = "westid".obs;

  void changeActiveStore(String id) {
    activeStore.value = id;
    activeStore.refresh();
  }

  RxList<StoreModel> _stores = RxList(
    [
      StoreModel(name: "Store West", id: "westid", shortDescription: "store in the west"),
      StoreModel(name: "Store Nort", id: "northid", shortDescription: "store in the north"),
      StoreModel(name: "Store East", id: "eastid", shortDescription: "store in the east"),
    ],
  );

  // RxList<Map<String, dynamic>> get getStores => _stores;
  RxList<StoreModel> get getStores => _stores;

  // void addStoreModel(StoreModel model) {
  //   _stores.add({"name": model.name, "id": model.id, "shortdescription": model.shortDescription});
  //   _stores.refresh();
  // }

  void addStoreModel(StoreModel model) {
    _stores.add(model);
    _stores.refresh();
  }

  void changeStoreModel() {
    _stores.refresh();
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   var profile = ProfileModel(
  //     firstName: "JanF",
  //     lastName: "FreirichJ",
  //     email: "jtJanFreirich@gmail.com",
  //   );
  //   _profile(profile);
  // }
}

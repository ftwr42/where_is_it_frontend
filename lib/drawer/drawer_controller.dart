import 'package:get/get.dart';
import 'package:where_is_it/aa_model/ProfileModel.dart';
import 'package:where_is_it/aa_model/StoreModel.dart';

class WiiDrawerController extends RxController {
  var _profile = ProfileModel().obs;

  ProfileModel get getProfileModel => _profile.value;

  void setProfileModel(ProfileModel model) {
    _profile.value = model;
    _profile.refresh();
  }

  RxList<StoreModel> _store = StoreModel.models.obs;

  List<StoreModel> get getStoreModel => _store.value;

  void addStoreModel(StoreModel model) {
    _store.value.add(model);
    _store.refresh();
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

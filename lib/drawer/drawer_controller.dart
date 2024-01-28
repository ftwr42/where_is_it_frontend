import 'package:get/get.dart';
import 'package:where_is_it/profile/profile_model.dart';

class WiiDrawerController extends RxController {
  var _profile = ProfileModel().obs;

  ProfileModel get getProfileModel => _profile.value;

  void setProfileModel(ProfileModel model) {
    _profile.value = model;
    _profile.refresh();
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

class ProfileModel {
  static List<ProfileModel> models = [];

  String firstName = "Jan";
  String lastName = "Freirich";
  String email = "JanFreirich(at)gmail.com";

  ProfileModel({this.firstName = "Name", this.lastName = "Lastname", this.email = "E-Mail"});
}

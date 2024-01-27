import 'package:flutter/cupertino.dart';
import 'package:where_is_it/zz_stateholder/stateif.dart';

class ProfileState extends StateIF {
  static final Widget TITLE = const Text("User Profile");
  static final Widget PROFILE_DETAILS = const Text('Edit Profile Details');
  static final String PROFILE_FIRSTNAME = "Firstname";
  static final String PROFILE_LASTNAME = "Lastname";
  static final String PROFILE_EMAIL = "E-Mail";
  static final String PROFILE_DESCRIPTION = "Short Description";
  static final String PROFILE_AGE = "Age";

  static final double PROPERTIES_PATTERN = 5;
}

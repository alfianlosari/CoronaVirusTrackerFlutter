import 'package:flutter/material.dart';

import 'google_map_stub.dart'
    if (dart.library.io) 'package:CoronaTracker/google_map_mobile.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'package:CoronaTracker/google_map_browser.dart';

abstract class BaseGoogleMap {
  StatefulWidget getWidget();

  factory BaseGoogleMap() => getGoogleMap();
}

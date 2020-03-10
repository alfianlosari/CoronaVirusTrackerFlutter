import 'google_map_base.dart';

/// Implemented in `google_map_browser.dart` and `google_map_mobile.dart`.
BaseGoogleMap getGoogleMap() => throw UnsupportedError(
    'Cannot create a client without dart:html or dart:io.');

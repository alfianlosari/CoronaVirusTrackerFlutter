import 'package:flutter/material.dart';

import 'package:CoronaTracker/apis/corona_service.dart';
import 'package:CoronaTracker/models/corona_case_country.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'google_map_base.dart';

class GoogleMapsMobile implements BaseGoogleMap {
  GoogleMapsMobile();

  StatefulWidget getWidget() {
    return MobileMapsPage();
  }
}

BaseGoogleMap getGoogleMap() => GoogleMapsMobile();

class MobileMapsPage extends StatefulWidget {
  MobileMapsPage({Key key}) : super(key: key);

  @override
  _MapsPage createState() => _MapsPage();
}

class _MapsPage extends State<MobileMapsPage>
    with AutomaticKeepAliveClientMixin<MobileMapsPage> {
  @override
  bool get wantKeepAlive => true;

  var service = CoronaService.instance;
  Future<List<CoronaCaseCountry>> _allCasesFuture;
  List<CoronaCaseCountry> cases;
  final Map<String, Marker> _markers = {};

  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    if (cases == null) {
      return;
    }

    setState(() {
      _markers.clear();
      cases.forEach((element) {
        element.cases.forEach((element) {
          final totalCount = element.totalCount;
          final title = '${element.state} ${element.country}';
          final marker = Marker(
            markerId: MarkerId(title),
            position: LatLng(element.latitude, element.longitude),
            infoWindow: InfoWindow(
              title:
                  "${element.state != null ? element.state : 'N/A'}-${element.country}",
              snippet:
                  "C: ${totalCount.confirmedText} D: ${totalCount.deathsText} R: ${totalCount.recoveredText}",
            ),
          );
          _markers[title] = marker;
        });
      });
    });
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  _fetchData() {
    _allCasesFuture = service.fetchCases();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
        future: _allCasesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.error != null) {
            return Center(
              child: Text('An error has occured'),
            );
          } else {
            this.cases = snapshot.data;

            return GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: const LatLng(30.5833, 114.26667),
                zoom: 5,
              ),
              markers: _markers.values.toSet(),
            );
          }
        });
  }
}

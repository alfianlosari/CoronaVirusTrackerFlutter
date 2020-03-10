import 'package:flutter/material.dart';
import 'package:CoronaTracker/apis/corona_service.dart';
import 'package:CoronaTracker/models/corona_case_country.dart';

import 'google_map_base.dart';
import 'package:google_maps/google_maps.dart' as googleWebMap;
import 'dart:ui' as ui;
import 'dart:html';

class GoogleMapBrowser implements BaseGoogleMap {
  GoogleMapBrowser();

  StatefulWidget getWidget() {
    return BrowserMapsPage();
  }
}

BaseGoogleMap getGoogleMap() => GoogleMapBrowser();

class BrowserMapsPage extends StatefulWidget {
  BrowserMapsPage({Key key}) : super(key: key);

  @override
  _MapsPage createState() => _MapsPage();
}

class _MapsPage extends State<BrowserMapsPage>
    with AutomaticKeepAliveClientMixin<BrowserMapsPage> {
  @override
  bool get wantKeepAlive => true;

  var service = CoronaService.instance;
  Future<List<CoronaCaseCountry>> _allCasesFuture;

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
            final List<CoronaCaseCountry> cases = snapshot.data;
            String htmlId = "7";

            // ignore: undefined_prefixed_name
            ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
              final mapOptions = googleWebMap.MapOptions()
                ..zoom = 5
                ..center = googleWebMap.LatLng(30.5833, 114.26667);

              final elem = DivElement()
                ..id = htmlId
                ..style.width = "100%"
                ..style.height = "100%"
                ..style.border = 'none';

              final map = googleWebMap.GMap(elem, mapOptions);

              cases.forEach((element) {
                element.cases.forEach((element) {
                  final totalCount = element.totalCount;
                  final marker = googleWebMap.Marker(
                      googleWebMap.MarkerOptions()
                        ..position = googleWebMap.LatLng(
                            element.latitude, element.longitude)
                        ..map = map
                        ..title = element.state);

                  final infoWindow = googleWebMap.InfoWindow(googleWebMap
                      .InfoWindowOptions()
                    ..content =
                        '<h3>${element.state != null ? element.state : 'N/A'}-${element.country}</h3><p>Confirmed: ${totalCount.confirmedText} </br> Deaths: ${totalCount.deathsText} </br> Recovered: ${totalCount.recoveredText}</p>');
                  marker.onClick.listen((event) {
                    infoWindow.open(map, marker);
                  });
                });
              });
              return elem;
            });

            return HtmlElementView(viewType: htmlId);
          }
        });
  }
}

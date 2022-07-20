// ignore_for_file: prefer_final_fields, prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong_to_osgrid/latlong_to_osgrid.dart';
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';

class FindDoctors extends StatefulWidget {
  const FindDoctors({Key? key}) : super(key: key);

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
  PopupController _popupController = PopupController();
  MapController _mapController = MapController();
  double _zoom = 10;

  List<Marker> _markers = [];
  /*----------------------------------------------------------------------*/
  Location location = new Location();

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _userLocation;
  LatLng location_dms = new LatLng(0, 0);
  dynamic latDms = null, longDms = null;

  Future<void> _getUserLocation() async {
    Location location = new Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;
    });
    LatLongConverter converter = new LatLongConverter();

    latDms = converter.getDegreeFromDecimal(_userLocation.latitude!);

    longDms = converter.getDegreeFromDecimal(_userLocation.longitude!);
  }

  var lat;

/*---------------------------------------------------*/
  List<LatLng> _latLngList = [
    // LatLng(_userLocation.latitude, longDms),
    LatLng(10.555, 76.225),
    LatLng(10.534, 76.212),
    LatLng(10.525, 76.211),
    LatLng(10.535, 76.199),
    LatLng(10.527, 76.215),
    LatLng(10.531, 76.214),
    LatLng(10.528, 76.208),
    LatLng(10.545, 76.216),
    // LatLng(13.015, 77.53),
    // LatLng(13.155, 77.54),
    // LatLng(13.159, 77.55),
    // LatLng(13.17, 77.55),
  ];

  @override
  void initState() {
    _markers = _latLngList
        .map((point) => Marker(
              point: point,
              width: 40,
              height: 40,
              builder: (context) => Icon(
                Icons.pin_drop,
                size: 40,
                color: Colors.blueAccent,
              ),
            ))
        .toList();
    super.initState();
    _getUserLocation().whenComplete(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          // swPanBoundary: LatLng(13, 77.5),
          // nePanBoundary: LatLng(13.07001, 77.58),
          // center: LatLng(latDms, longDms),
          center: _latLngList[0],
          bounds: LatLngBounds.fromPoints(_latLngList),
          zoom: _zoom,

          plugins: [
            MarkerClusterPlugin(),
          ],
        ),
        layers: [
          TileLayerOptions(
            minZoom: 1,
            maxZoom: 18,
            backgroundColor: Colors.black,
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: _markers,
          ),
        ]);
  }
}

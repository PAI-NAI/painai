//import 'dart:js';

import 'package:googlemap/DataHandler/appData.dart';
import 'package:googlemap/configMaps.dart';
import 'package:googlemap/Assistants/requestAssistant.dart';
import 'package:googlemap/Models/address.dart';
import 'package:geolocator/geolocator.dart';
//import 'package:provider/provider.dart';

/* class AssistantsMethods {
  static Future<String> searchCoodinateAddress(
      Position position, context) async {
    String st1, st2, st3, st4;
    String placeAddress = '';
    String url =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=AIzaSyB8pLkde4DnEeSjJAn4s27vCBeN-f-j_pM";

    var response = await RequestAssistant.getRequest(url);

    if (response != 'failed') {
      //placeAddress = response['results'][0]['formatted_address'];
      
      st1 = response['results'][0]['address_components'][0]['long_name'];
      st2 = response['results'][0]['address_components'][1]['long_name'];
      st3 = response['results'][0]['address_components'][5]['long_name'];
      st4 = response['results'][0]['address_components'][6]['long_name'];
      placeAddress = st1 + ', ' + st2 + ', ' + st3 + ', ' + st4 + ', ';

      Address userPickUpAddress = new Address();
      userPickUpAddress.latitude = position.latitude;
      userPickUpAddress.longitude = position.longitude;
      userPickUpAddress.placeName = placeAddress;

      Provider.of<AppData>(context, listen: false)
          .updatePickUpLocationaddress(userPickUpAddress);
    }

    return placeAddress;
  }
}
 */
class AssistantsMethods {
  static Future<String> searchCoodinateAddress(
      Position position) async {
    String placeAddress = '';
    String url =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=AIzaSyB8pLkde4DnEeSjJAn4s27vCBeN-f-j_pM";

    var response = await RequestAssistant.getRequest(url);

    if (response != 'failed') {
      //placeAddress = response['results'][0]['formatted_address'];
    }

    return placeAddress;
  }
}

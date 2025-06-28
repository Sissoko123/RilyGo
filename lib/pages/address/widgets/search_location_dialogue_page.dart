import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../controllers/location_controller.dart';
import '../../../utils/dimensions.dart';
import 'package:get/get.dart';
import 'package:google_places_flutter/model/prediction.dart';
class LocationDialogue extends StatelessWidget {
  final GoogleMapController mapController;
  const LocationDialogue({super.key, required this.mapController});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Container(
      padding: EdgeInsets.all(Dimensions.width10),
      //alignment: Alignment.topCenter,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius20/2),

        ),
        child: SizedBox(
          width: Dimensions.screenWidth,
         /* child: TypeAheadField<String>(
            suggestionsCallback: (String pattern) async {
             //return await Get.find<LocationController>().searchLocation(pattern);
            },
            builder: (context, controller, focusNode) {
              return TextField(
                controller: controller,
                //focusNode: focusNode,
                textInputAction: TextInputAction.search,
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.streetAddress,
               /* decoration: const InputDecoration(
                  hintText: "Search location...",
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ), */
              );
            },
            /*itemBuilder: (context, Prediction suggestion) {
              return Row(
                Icon(Icons.location_on),
                Expanded(
                  child: Text(
                    "New Location"
                  ),
                )
              );
            },*/
            onSelected: (String suggestion) {},
          ), */
        ),
      ),
    );
  }
}

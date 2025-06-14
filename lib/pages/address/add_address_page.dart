import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/controllers/location_controller.dart';
import 'package:food_delivery/controllers/user_controller.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {

  TextEditingController _addressController = TextEditingController();
  final TextEditingController _contactPersonName=TextEditingController();
  final TextEditingController _contactPersonNumber = TextEditingController();
  late bool _islogged;
  CameraPosition _cameraPosition = const CameraPosition(target: LatLng(
      45.51563, -122.677433
  ),zoom: 17);
  late LatLng _initialPosition;

  @override
  void initState() {
    super.initState();
    _islogged= Get.find<AuthController>().userLoggedIn();
    if(_islogged&&Get.find<UserController>().userModel==null){
      Get.find<UserController>().getUserInfo();
    }
      if(Get.find<LocationController>().addressList.isNotEmpty){
        _cameraPosition=CameraPosition(target: LatLng(
          double.parse(Get.find<LocationController>().getAddress["latitude"]),
          double.parse(Get.find<LocationController>().getAddress["longitude"])
        ));
        _initialPosition=LatLng(
            double.parse(Get.find<LocationController>().getAddress["latitude"]),
            double.parse(Get.find<LocationController>().getAddress["longitude"])
        );
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address page"),
        backgroundColor: AppColors.mainColor,
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}

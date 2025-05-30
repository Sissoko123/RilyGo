import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.height;


  static double pageView= screenHeight/3.12; // 997/320 ,844/320=2.64
  static double pageViewContainer= screenHeight/4.53; // 844/220
  static double pageTextContainer= screenHeight/8.03; // 844/120
  //dynamic height padding and margin
  static double height10 = screenHeight/99.7; // 997/844/10=84.4
  static double height15 = screenHeight/66.47; // 997/844/15=84.4
  static double height20 = screenHeight/49.85;  // 997/844/20=42.2
  static double height30 = screenHeight/33.23;  // 997/844/20=42.2
  static double height45 = screenHeight/22.16;


  //dynamic width padding and margin
  static double width10 = screenHeight/99.7; // 997/844/10=84.4
  static double width15 = screenHeight/66.47; // 997/844/15=84.4
  static double width20 = screenHeight/49.85;
  static double width30 = screenHeight/33.23;

  //font size
  static double font16 = screenHeight/62.31;
  static double font20 = screenHeight/49.85;
  static double font26 = screenHeight/38.35;



  //radius
  static double radius15 = screenHeight/66.47;
  static double radius20 = screenHeight/49.85;
  static double radius30 = screenHeight/33.23;

  //icon Size
static double iconsize24 = screenHeight/41.54;
static double iconsize16 = screenHeight/62.31;



//list view size
static double listViewImgSize = screenWidth/8.31;
static double listViewTextContSize = screenWidth/9.97;

//popular food
static double popularFoodImgSize = screenHeight/2.85;

//bottom height
static double bottomHeightBar = screenHeight/8.31;

}
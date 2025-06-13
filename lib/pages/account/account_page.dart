import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/base/custom_loader.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/account_widget.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';
import '../../controllers/user_controller.dart';
import '../../utils/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: GetBuilder<UserController>(builder: (userController) {
        return _userLoggedIn
            ? (userController.isLoading
            ? Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: Dimensions.height20),
          child: Column(
            children: [
              AppIcon(
                icon: Icons.person,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height45 + Dimensions.height30,
                size: Dimensions.height15 * 10,
              ),
              SizedBox(height: Dimensions.height30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 2.5,
                          size: Dimensions.height10 * 5,
                        ),
                        bigText: BigText(
                            text: userController.userModel.name),
                      ),
                      SizedBox(height: Dimensions.height20),
                      AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 2.5,
                          size: Dimensions.height10 * 5,
                        ),
                        bigText: BigText(
                            text: userController.userModel.phone),
                      ),
                      SizedBox(height: Dimensions.height20),
                      AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.email,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 2.5,
                          size: Dimensions.height10 * 5,
                        ),
                        bigText: BigText(
                            text: userController.userModel.email),
                      ),
                      SizedBox(height: Dimensions.height20),
                      AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 2.5,
                          size: Dimensions.height10 * 5,
                        ),
                        bigText:
                        BigText(text: "Fill your Address Here"),
                      ),
                      SizedBox(height: Dimensions.height20),
                      AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.message_outlined,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 2.5,
                          size: Dimensions.height10 * 5,
                        ),
                        bigText: BigText(text: "Messages"),
                      ),
                      SizedBox(height: Dimensions.height20),
                      GestureDetector(
                        onTap: () {
                          if (Get.find<AuthController>()
                              .userLoggedIn()) {
                            Get.find<AuthController>()
                                .clearSharedData();
                            Get.find<CartController>().clear();
                            Get.find<CartController>()
                                .clearCartHistory();
                            Get.offNamed(
                                RouteHelper.getSignInPage());
                          }
                        },
                        child: AccountWidget(
                          appIcon: AppIcon(
                            icon: Icons.logout,
                            backgroundColor: Colors.redAccent,
                            iconColor: Colors.white,
                            iconSize: Dimensions.height10 * 2.5,
                            size: Dimensions.height10 * 5,
                          ),
                          bigText: BigText(text: "Logout"),
                        ),
                      ),
                      SizedBox(height: Dimensions.height20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
            : CustomLoader())
            : Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centrage vertical
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: Dimensions.height20 * 10,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(Dimensions.radius20),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/image/sign_in.png"),
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height30),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getSignInPage());
                  },
                  child: Container(
                    width: double.infinity,
                    height: Dimensions.height20 * 5,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius:
                      BorderRadius.circular(Dimensions.radius20),
                    ),
                    child: Center(
                      child: BigText(
                        text: "Sign in",
                        color: Colors.white,
                        size: Dimensions.font20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

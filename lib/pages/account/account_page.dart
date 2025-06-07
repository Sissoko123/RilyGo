import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/account_widget.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

import '../../utils/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
            text:"Profile", size:24, color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(

          children: [
            // profile icon
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.mainColor,
            iconColor: Colors.white,
            iconSize: Dimensions.height45+Dimensions.height30,
          size: Dimensions.height15*10,),
            SizedBox(height: Dimensions.height30,), 
           
           Expanded(
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   //name
                   AccountWidget(
                       appIcon: AppIcon(icon: Icons.person,
                         backgroundColor: AppColors.mainColor,
                         iconColor: Colors.white,
                         iconSize:Dimensions.height10*5/2 ,
                         size: Dimensions.height10*5,),
               
                       bigText: BigText(text: "Sissoko")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //phone
                   AccountWidget(
                       appIcon: AppIcon(icon: Icons.phone,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize:Dimensions.height10*5/2 ,
                         size: Dimensions.height10*5,),
               
                       bigText: BigText(text: "0700369150")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //email
                   AccountWidget(
                       appIcon: AppIcon(icon: Icons.email,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize:Dimensions.height10*5/2 ,
                         size: Dimensions.height10*5,),
               
                       bigText: BigText(text: "moussatiecourasissoko@gmail.com")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //address
                   AccountWidget(
                       appIcon: AppIcon(icon: Icons.location_on,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize:Dimensions.height10*5/2 ,
                         size: Dimensions.height10*5,),
               
                       bigText: BigText(text: "Fill your Adress Here")
                   ),
                   SizedBox(height: Dimensions.height20,),
                   //message
                   AccountWidget(
                       appIcon: AppIcon(icon: Icons.message_outlined,
                         backgroundColor: Colors.redAccent,
                         iconColor: Colors.white,
                         iconSize:Dimensions.height10*5/2 ,
                         size: Dimensions.height10*5,),
               
                       bigText: BigText(text: "Sissoko")
                   ),
                   SizedBox(height: Dimensions.height20,),
                 ],
               ),
             ),
           )

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/ma_academy/view/screens/profile/profile_2.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:sizer/sizer.dart';

class ProfilScreen extends StatelessWidget {
  static const String routName = "profilScreen";

  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(7.h),
        child: CustomAppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            'Account',
            style: TextStyle(fontSize: FontSize.s20),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  Text(
                    "42020409",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorManager.blackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profil_2()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Profil",
                  style:
                      TextStyle(fontSize: 20, color: ColorManager.blackColor),
                ),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                const SizedBox(
                  width: 14,
                ),
                Icon(
                  Icons.share,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.blackColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 20,
            thickness: 1.2,
            color: Colors.grey,
          ),
          MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.block,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Block",
                  style:
                      TextStyle(fontSize: 20, color: ColorManager.whiteColor),
                ),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1.2,
            color: Colors.grey,
          ),
          MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.notification_important,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Notification",
                  style:
                      TextStyle(fontSize: 20, color: ColorManager.whiteColor),
                ),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1.2,
            color: Colors.grey,
          ),
          MaterialButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Setting()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Setting",
                  style:
                      TextStyle(fontSize: 20, color: ColorManager.whiteColor),
                ),
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1.2,
            color: Colors.grey,
          ),
          MaterialButton(
            onPressed: () async {},
            child: Row(
              children: [
                Icon(
                  Icons.exit_to_app_sharp,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign Out",
                  style:
                      TextStyle(fontSize: 20, color: ColorManager.whiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

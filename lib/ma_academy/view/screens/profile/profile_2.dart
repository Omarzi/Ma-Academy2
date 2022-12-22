import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';

class Profil_2 extends StatefulWidget {
  @override
  State<Profil_2> createState() => _Profil_2State();
}

class _Profil_2State extends State<Profil_2> {
  @override
  String? x;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.grey,
      appBar: AppBar(
        backgroundColor: ColorManager.grey,
        leading: MaterialButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_back,
            color: ColorManager.primary,
          ),
        ),
        title: const Text(
          "Profil",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                width: 300,
                height: 20,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              const Text(
                "Edit image",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                "N/A",
                style: TextStyle(
                  color: ColorManager.primary,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          const Divider(
            height: 10,
            thickness: 1.2,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 7,
              ),
              const Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              Text(
                "Amira@gmail,com",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorManager.primary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 10,
            thickness: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              const Text(
                "Work phone",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              Text(
                "N/A",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorManager.primary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 10,
            thickness: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    "Mopile phone",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "01061489546",
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorManager.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 10,
            thickness: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              const Text(
                "location",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              Text(
                "N/A",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorManager.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();
  List<String> onSearchMedicine = [];
  List<String> medicine = [
    "Machanices",
    "اساسيات الرياضيات والجبر",
    "Statistic",
    "نقود وبنوك",
    "ادارة اعمال دولية",
    "تسويق",
    "موارد بشريه",
    "بحوث وعمليات",
    "قسم المحاسبه",
    "اقتصاد(أ)",
    "اعمال الكترونية",
    "نظم محاسبه",
    "رياضه بحته",
    "احصاء وصفي ",
    "التأمين",
    "اساليب كمية",
    "تكاليف معياريه",
    "نظرية الحسابات",
    "محاسبة اداريه",
    "مشاكل ضريبيه",
    "تكاليف معياريه",
    "منشأت ماليه",
    "الدراسات الاجتماعيه",
    "Math",
    "ادارة انتاج",
    "ماليه عامه",
    "اقتصاد دولي",
    "تحليل اقتصاد كلي",
    "موارد اقتصاديه",
    "تحليل اقتصاد جزئي ",
    "دراسات تجاريه",
    "اقتصاد(ب)",
    "منشأت متخصصه",
    "محاسبه متقدمه",
    "محاسبه دولية",
    "محاسبة تكاليف",
    "مراجعه بيئيه",
    "محاسبه ضريبيه",
    "محاسبة حكومية",
    "محاسبةمتوسطه",
    "محاسبة شركات",
    "محاسبةمالية",
    "احصاء",
    "احصاء تطبيقي",
    "احصاء تطبيقيه(أ)",
    "احصاء تطبيقيه(ب)",
    "رياضه مالية",
    "الموارد الشرعيه",
    "جميع الموارد",
    "فلسفه ومنطق",
    "علم النفس واجتماع",
    "تفاضل",
    "science",
    "italy",
    "رياضيات",
    "physics",
    "chemistry",
    "Biology",
    "اقتصاد",
    "Geometrics drawing",
    "Mechanics",
    "programming",
    "human rights",
    "Applied ststistics",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.primary,
          ),
        ),
        title: Text(
          "Search",
          style: TextStyle(color: ColorManager.primary),
        ),
      ),
      body: controller.text.isNotEmpty && onSearchMedicine.isEmpty
          ? Center(
              child: Text(
              "No result found",
              style: TextStyle(
                fontSize: 18,
              ),
            ))
          : Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(3.sp),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            onSearchMedicine = medicine
                                .where((element) => element
                                    .toUpperCase()
                                    .contains(value.toUpperCase()))
                                .toList();
                          });
                        },
                        controller: controller,
                        decoration: InputDecoration(
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          floatingLabelStyle:
                              TextStyle(color: Colors.transparent),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          icon: Icon(Icons.search),
                          suffixIcon: InkWell(
                            onTap: () {
                              onSearchMedicine.clear();
                              controller.clear();
                              setState(() {
                                controller.text = "";
                              });
                            },
                            child: Icon(
                              Icons.list_sharp,
                              color: Colors.grey,
                            ),
                          ),
                          labelText: "   Search",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 8.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.text.isNotEmpty
                            ? onSearchMedicine.length
                            : medicine.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: ColorManager.primary,
                                    borderRadius: BorderRadius.circular(12.sp)),
                                child: Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(AppPadding.p8),
                                    child: Text(
                                      controller.text.isNotEmpty
                                          ? onSearchMedicine[index]
                                          : medicine[index],
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                        }),
                  )
                ],
              )),
    );
  }
}

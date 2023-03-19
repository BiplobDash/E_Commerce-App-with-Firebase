
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: AppbarStyle(),
        title: CustomContainer(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: slidNavigator(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: categoryList(),
          )
        ],
      ),
    );
  }
  slidNavigator(){
    return Container(
              height: 600.h,
              width: 80.w,
              color: Colors.grey.shade300,
            );
  }

  categoryList(){
    return Container(
              height: 600.h,
              width: 300.w,
              color: Colors.white,
            );
  }
}
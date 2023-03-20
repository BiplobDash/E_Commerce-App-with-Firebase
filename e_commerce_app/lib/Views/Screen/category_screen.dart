import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<ItemData> _items = [
    ItemData(label: 'Men'),
    ItemData(label: 'Women'),
    ItemData(label: 'Electronics'),
    ItemData(label: 'Accessories'),
    ItemData(label: 'Shoes'),
    ItemData(label: 'Home'),
    ItemData(label: 'Beauty'),
    ItemData(label: 'Kids'),
    ItemData(label: 'Bags'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: const AppbarStyle(),
        title: const CustomContainer(),
      ),
      body: Container(
        child: Stack(
          children: [
            
            Positioned(
              bottom: 0,
              left: 0,
              child: slidNavigator(),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: NavigatorSlid(),
            )
          ],
        ),
      ),
    );
  }

  slidNavigator() {
    return SizedBox(
      height: 600.h,
      width: 80.w,
      child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                for (var elements in _items) {
                  elements.isSelected = false;
                }
                setState(() {
                  _items[index].isSelected = true;
                });
              },
              child: Container(
                color: _items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade300,
                height: 60.h,
                child: Center(
                  child: Text(_items[index].label),
                ),
              ),
            );
          }),
    );
  }

  NavigatorSlid() {
    return Container(
      height: 600.h,
      width: 280.w,
      color: Colors.white,
    );
  }
}

class ItemData {
  String label;
  bool isSelected;
  ItemData({required this.label, this.isSelected = false});
}


import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widget/custom_container.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: AppbarStyle(),
          title: CustomContainer(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 4,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
            Tab(child: Text('Men'),),
            Tab(child: Text('Women'),),
            Tab(child: Text('Shoes'),),
            Tab(child: Text('Electronics'),),
            Tab(child: Text('Bag'),),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text('Men Page'),),
          Center(child: Text('Women Page'),),
          Center(child: Text('Shoes Page'),),
          Center(child: Text('Electronics Page'),),
          Center(child: Text('Bag Page'),),
        ]),
      ),
    );
  }
}
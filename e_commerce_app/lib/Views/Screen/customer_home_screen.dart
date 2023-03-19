
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          title: Container(
            height: 35.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow, width: 1.4),
              borderRadius: BorderRadius.circular(30.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Icon(Icons.search, color: Colors.grey,),
                    ),
                    Text('Search here', style: TextStyle(fontSize: 14.sp, color: Colors.grey),),
                  ],
                ),
                
                Container(
                  height: 28.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30.r)
                  ),
                  child: Center(child: Text('Search', style: TextStyle(fontSize: 14.sp, color: Colors.black54),),),
                )
              ],
            ),
          ),
          bottom: TabBar(
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
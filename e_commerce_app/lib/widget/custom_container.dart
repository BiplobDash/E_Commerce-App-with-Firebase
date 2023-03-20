import 'package:e_commerce_app/Views/Screen/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => SearchScreen())));
      },
      child: Container(
        height: 30.h,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(30.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Search here',
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
              ],
            ),
            Container(
              height: 28.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30.r)),
              child: Center(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

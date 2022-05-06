import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftRightWeightSliderWidget extends StatelessWidget {
  final double? leftWeight;
  final double? rightWeight;
  final double width;
  LeftRightWeightSliderWidget({
    this.leftWeight,
    this.rightWeight,
    required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.005.sw),
      child: Container(
        width: width,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "좌우 밸런스",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            SizedBox(
              height: 0.005.sh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Left",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffefab22),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Right",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffff6c08),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.005.sh,
            ),
            Container(
              width: width,
              height: 0.02.sh,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffefab22),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          )),
                      width: leftWeight == null ? 0 : width * leftWeight!,
                      height: 0.04.sh,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffff6c08),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      width: rightWeight == null ? 0 : width * rightWeight!,
                      height: 0.04.sh,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(leftWeight == null
                          ? "0"
                          : (leftWeight! * 100).toStringAsFixed(1) + "%"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(rightWeight == null
                          ? "0"
                          : (rightWeight! * 100).toStringAsFixed(1) + "%"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

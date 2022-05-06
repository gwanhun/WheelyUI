import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/mobile_account_disable_info_edit.dart';

class MobileDropdownWidget extends StatefulWidget {
  MobileDropdownWidget({
    Key? key,
    required this.boxName,
    required this.userValue,
    required this.valueList,
    required this.model,
    this.refresh,
    this.infoText,
  }) : super(key: key);
  final String boxName;
  final String userValue;
  final List valueList;
  final String? infoText;
  final MobileDisableInfoModel model;
  final Function? refresh;

  @override
  _MobileDropdownWidgetState createState() => _MobileDropdownWidgetState();
}

class _MobileDropdownWidgetState extends State<MobileDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.boxName,
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontSize: 16.sp, color: Colors.white),
          ),
          SizedBox(
            height: 6.h,
          ),
          DropdownButton<String>(
            value: widget.model.displayValue,
            // isDense: true,
            //dropdownColor: SpeedOMeterDataBoxColor,
            dropdownColor: Color.fromARGB(221, 26, 26, 26),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            items: widget.model.dataList.map(
              (value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          value,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(fontSize: 16.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: 290.w,
                        ),
                      ],
                    ));
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  widget.model.setValue(value!);
                },
              );
              if (widget.refresh != null) widget.refresh!();
            },
          ),
          if (widget.infoText != null)
            Container(
              alignment: Alignment.centerRight,
              child: Text(widget.infoText ?? "",
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 12.sp, color: Colors.deepOrange[900])),
            ),
        ],
      ),
    );
  }
}

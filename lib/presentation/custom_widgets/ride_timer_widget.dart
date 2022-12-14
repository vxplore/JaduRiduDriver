import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadu_ride_driver/presentation/ui/app_text_style.dart';
import 'package:jadu_ride_driver/presentation/ui/theme.dart';
import 'package:jadu_ride_driver/utills/extensions.dart';

class RideTimerWidget extends StatefulWidget {
  Duration duration;
  String title;
  VoidCallback onTimeout;

  RideTimerWidget(
      {Key? key,
      required this.duration,
      required this.title,
      required this.onTimeout})
      : super(key: key);

  @override
  State<RideTimerWidget> createState() => _RideTimerWidgetState();
}

class _RideTimerWidgetState extends State<RideTimerWidget> {
  String strDigits(int n) => n.toString().padLeft(2, '0');
  late final Timer ticker;
  late Duration duration;

  @override
  void initState() {
    duration = widget.duration;
    super.initState();
    ticker = Timer.periodic(const Duration(seconds: 1), (timer) {
      const reduceBy = 1;

      setState(() {
        final second = duration.inSeconds - reduceBy;
        if (second > 0) {
          duration = Duration(seconds: second);
        } else {
          widget.onTimeout();
          ticker.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    ticker.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final secondStr = strDigits(duration.inSeconds.remainder(60));
    final minStr = strDigits(duration.inMinutes.remainder(60));
    return Container(
      padding: EdgeInsets.all(0.03.sw),
      width: 1.sw,
      height: 0.10.sh,
      decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(16.r)),
      child: fitBox(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.title
              .text(AppTextStyle.timerHeadingStyle)
              .padding(insets: EdgeInsets.only(bottom: 0.01.sw)),
          "$minStr:$secondStr".text(AppTextStyle.timerHeadingStyle.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.Acadia))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class CommanContainer extends StatelessWidget {
  final String text;
  final double? hightt;
  final double? wigth;
  final Color? color;
  final BorderRadius? borderRadius;
  final Image? images;
  const CommanContainer(
      {super.key,
      required this.text,
      this.hightt,
      this.wigth,
      this.color,
      this.borderRadius,
      this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hightt ?? 100,
      width: wigth ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.grey,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
        ],
      ),
    );
  }
}

// class AppButton extends StatelessWidget {
//   final String? title;
//   final bool? disableButton;
//   final VoidCallback? onPressed;
//   final VoidCallback? onLongPress;
//   final double? height;
//   final double? width;
//   final double? fontSize;
//   final double? radius;
//   final Widget? child;
//   final IconData? icon;
//   final String? image;
//   final bool? isCornerCircle;
//   final bool? isBorder;
//   final Color? backgroundColor;
//   final Color? textColor;
//   final FontWeight? textWeight;
//   final bool? isLoading;

//   const AppButton({
//     super.key,
//     this.title = "",
//     required this.onPressed,
//     this.onLongPress,
//     this.disableButton = false,
//     this.height,
//     this.width,
//     this.fontSize,
//     this.radius,
//     this.child,
//     this.icon,
//     this.image = "",
//     this.isCornerCircle = true,
//     this.isBorder = false,
//     this.backgroundColor,
//     this.textColor,
//     this.textWeight,
//     this.isLoading = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: disableButton! ? null : onPressed,
//       onLongPress: disableButton! ? null : onLongPress,
//       style: ElevatedButton.styleFrom(
//         fixedSize: Size(width ?? Get.width, height ?? 48.h),
//         side: isBorder! ? const BorderSide(color: AppColors.primaryColor, width: 1.5) : null,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(isCornerCircle! ? 25.h : radius ?? 7.h)),
//         backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
//         foregroundColor: AppColors.whiteColor,
//         disabledBackgroundColor: AppColors.bgColor,
//         disabledForegroundColor: AppColors.disableColor,
//         textStyle: TextStyle(
//           fontSize: fontSize ?? 15.sp,
//           fontWeight: textWeight ?? FontWeight.w500,
//         ),
//       ),
//       child: isLoading!
//           ? SizedBox(
//               height: 24.h,
//               width: 24.h,
//               child: const CircularProgressIndicator(
//                 color: Colors.white,
//                 strokeWidth: 3,
//               ),
//             )
//           : child ??
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   if (icon != null) ...[
//                     Icon(
//                       icon,
//                       color: Colors.white,
//                       size: 24,
//                     ),
//                     const SizedBox(width: 5),
//                   ],
//                   if (image!.isNotEmpty) ...[
//                     Image.asset(
//                       image!,
//                       width: 16.w,
//                     ),
//                     8.horizontalSpace,
//                   ],
//                   if (title!.isNotEmpty)
//                     Text(
//                       title!,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: textColor),
//                     )
//                 ],
//               ),
//     );
//   }
// }
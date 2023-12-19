part of '../onb_exp.dart';

class OnnboardWidget extends StatefulWidget {
  const OnnboardWidget({
    super.key,
    required this.image,
    required this.content,
    // required this.image2,
    // required this.content2,
    // required this.image3,
    // required this.content3,
  });
  final String image;
  final String content;
  // final String image2;
  // final String content2;
  // final String image3;
  // final String content3;

  @override
  State<OnnboardWidget> createState() => _OnnboardWidgetState();
}

class _OnnboardWidgetState extends State<OnnboardWidget> {
  OnboardViewModel onboardViewModel = OnboardViewModel();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          widget.image,
          height: 353.h,
          width: double.maxFinite,
        ),
        SizedBox(height: 41.h),
        SizedBox(
          width: 341.w,
          child: widget.content.text
              .size(15)
              .fontWeight(FontWeight.w500)
              .align(TextAlign.center)
              .make(),
        ),
      ],
    );
    // ////
    /*   Column(
          children: [
            Image.asset(
              widget.image2,
              height: 353.h,
              width: double.maxFinite,
            ),
            SizedBox(height: 41.h),
            SizedBox(
              width: 341.w,
              child: widget.content2.text
                  .size(15)
                  .fontWeight(FontWeight.w500)
                  .align(TextAlign.center)
                  .make(),
            ),
          ],
        ),
        // ////
        Column(
          children: [
            Image.asset(
              widget.image3,
              height: 353.h,
              width: double.maxFinite,
            ),
            SizedBox(height: 41.h),
            SizedBox(
              width: 341.w,
              child: widget.content3.text
                  .size(15)
                  .fontWeight(FontWeight.w500)
                  .align(TextAlign.center)
                  .make(),
            ),
          ],
        ), */
    // ],
    // );
  }
}

part of 'onb_exp.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnboardViewModel onboardViewModel = OnboardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                Image.asset(
                  MyAssets.mainLogo,
                  color: Colors.black,
                  height: 42.h,
                  width: 139.w,
                ),
                SizedBox(height: 53.h),
                PageView(
                  controller: onboardViewModel.pageController,
                  children: const [
                    OnnboardWidget(
                      image: MyAssets.onb1,
                      content:
                          "Discover, engage and read the latest articles or as well as share your own thoughts and ideas with the community",
                    ),
                    OnnboardWidget(
                      image: MyAssets.onb2,
                      content:
                          "Customize your reading experience and join the conversation by creating an account.",
                    ),
                    OnnboardWidget(
                      image: MyAssets.onb3,
                      content:
                          "Explore a wide selection of categories, or use the search bar to find specific topics",
                    ),
                  ],
                ).expand(),
                SizedBox(height: 61.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                  ),
                  child: "Get Started"
                      .text
                      .white
                      .size(16)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                SizedBox(height: 61.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .black
                        .size(16)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller: onboardViewModel.pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        spacing: 8.0,
                        radius: 50.r,
                        dotWidth: 10.w,
                        dotHeight: 10.w,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black,
                      ),
                    ),
                    "Next"
                        .text
                        .black
                        .size(16)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

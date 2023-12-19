part of 'splash_imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToOnboard();
    super.initState();
  }

  goToOnboard() async {
    await Future.delayed(const Duration(seconds: 4), () {
      AutoRouter.of(context).push(const OnBoardingScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryBgColor,
      extendBodyBehindAppBar: true,
      body: Center(
        child: SizedBox(
          height: 42.h,
          width: 139.w,
          child: const FadeInImage(
            fadeInDuration: Duration(seconds: 1),
            placeholder: AssetImage("assets/images/main_logo_new.png"),
            image: AssetImage(
              "assets/images/main_logo_new.png",
            ),
          ),
        ),
      ),
    );
  }
}

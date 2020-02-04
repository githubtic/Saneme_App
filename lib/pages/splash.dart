import 'package:saneme_app/packages/packages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomSplash(
        imagePath: 'assets/images/clip-welcome.png',
        backGroundColor: Colors.deepOrangeAccent,
        animationEffect: 'zoom-in',
        logoSize: 400,
        home: LoginPage(),
        duration: 3000,
        type: CustomSplashType.StaticDuration,
      ),
    );
  }
}

part of 'SplashImports.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {

  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_)=>Login()),
          (route) => false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Color.fromARGB(57, 9, 180, 77),
        color: AppColors.bg  ,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title:'Fitness',
                size: 42,
                color: AppColors.white,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                Res.fitIcon,
                width: 36.8,
                height: 49.86,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

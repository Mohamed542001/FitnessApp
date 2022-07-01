part of 'LoginImports.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginHeader(),
            SizedBox(
              height: 30,
            ),
            LoginForm(),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topRight,
                child: LoginForgetText()),
            LoginButton(),
            LoginNewAccText(),
          ],
        ),
      ),
    );
  }
}

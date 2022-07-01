part of 'LoginWidgetsImports.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultButton(
        title: 'تسجيل الدخول',
        onTap: (){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_)=>MainPage()),
          );
        },
      ),
    );
  }
}

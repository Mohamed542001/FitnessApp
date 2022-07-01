part of 'LoginWidgetsImports.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFormField(
          hint: 'البريد الالكتروني',
        ),
        SizedBox(
          height: 20,
        ),
        InputFormField(
          hint: 'كلمة المرور',
          secure: true,
        ),

      ],
    );
  }
}

part of 'ChangePasswordWidgetsImports.dart';


class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFormField(
          hint: 'كلمة المرور',
          secure: true,
        ),
        SizedBox(
          height: 30,
        ),
        InputFormField(
          hint: 'تأكيد كلمة المرور',
          secure: true,
        )
        //
      ],
    );
  }
}

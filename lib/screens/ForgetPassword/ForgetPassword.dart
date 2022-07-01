part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          children: [
            ForgetPasswordHeader(),
            ForgetPasswordPinCode(),
            ForgetPasswordImage(),
            ForgetPasswordButton(),
          ],
        ),
      ),
    );
  }
}
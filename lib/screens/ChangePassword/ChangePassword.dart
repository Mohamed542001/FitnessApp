part of 'ChangePasswordImports.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          children: [
            ChangePasswordHeader(),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  ChangePasswordForm(),
                  ChangePasswordButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

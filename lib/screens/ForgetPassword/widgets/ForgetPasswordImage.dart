part of 'ForgetPasswordWidgetsImports.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Image.asset(
          Res.forgetPassword,
          height: 200,
        ),
      ),
    );
  }
}

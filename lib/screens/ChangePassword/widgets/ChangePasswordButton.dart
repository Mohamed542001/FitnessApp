part of 'ChangePasswordWidgetsImports.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      margin: EdgeInsets.symmetric(vertical: 40),
      title: 'انتهيت',
      onTap: (){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_)=>Login()),
            (route) => false
        );
      },
    );
  }
}

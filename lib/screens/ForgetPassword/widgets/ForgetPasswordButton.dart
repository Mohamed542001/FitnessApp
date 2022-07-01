part of 'ForgetPasswordWidgetsImports.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>ChangePassword()),
        );
      },
    );
  }
}

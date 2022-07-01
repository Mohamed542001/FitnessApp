part of 'NewAccStep5WidgetsImports.dart';

class NewAccStep5Button extends StatelessWidget {
  const NewAccStep5Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_)=>MainPage()),
            (route) => false,
        );
      },
    );
  }
}

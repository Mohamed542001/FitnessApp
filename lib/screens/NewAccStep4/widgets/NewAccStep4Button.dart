part of 'NewAccStep4WidgetsImports.dart';

class NewAccStep4Button extends StatelessWidget {
  const NewAccStep4Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>NewAccStep5()),
        );
      },
    );
  }
}

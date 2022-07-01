part of 'NewAccStep3WidgetsImports.dart';

class NewAccStep3Button extends StatelessWidget {
  const NewAccStep3Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>NewAccStep4()),
        );
      },
    );
  }
}

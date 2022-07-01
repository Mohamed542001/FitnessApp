part of 'NewAccStep2WidgetsImports.dart';

class NewAccStep2Button extends StatelessWidget {
  const NewAccStep2Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>NewAccStep3()),
        );
      },
    );
  }
}

part of 'NewAccStep1WidgetsImports.dart';

class NewAccStep1Button extends StatelessWidget {
  const NewAccStep1Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>NewAccStep2()),
        );
      },
    );
  }
}

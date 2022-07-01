part of 'NewAccWidgetsImports.dart';

class NewAccButton extends StatelessWidget {
  const NewAccButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'انشاء حساب',
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>NewAccStep1()),
        );
      },
    );
  }
}

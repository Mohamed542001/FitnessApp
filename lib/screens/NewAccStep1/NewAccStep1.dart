part of 'NewAccStep1Imports.dart';

class NewAccStep1 extends StatelessWidget {
  const NewAccStep1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topRight,
              child: FocusOnForm(),
            ),
            NewAccStep1Button(),
          ],
        ),
      ),
    );
  }
}
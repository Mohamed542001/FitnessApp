part of 'NewAccStep1Imports.dart';

class NewAccStep1 extends StatelessWidget {
  const NewAccStep1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(20),
              child: FocusOnForm(),
            ),
            NewAccStep1Button(),
          ],
        ),
      ),
    );
  }
}
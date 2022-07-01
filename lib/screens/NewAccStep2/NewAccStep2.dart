part of 'NewAccStep2Imports.dart';

class NewAccStep2 extends StatelessWidget {
  const NewAccStep2({Key key}) : super(key: key);

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
              child: MainGoalForm(),
            ),
            NewAccStep2Button(),
          ],
        ),
      ),
    );
  }
}
part of 'NewAccStep3Imports.dart';

class NewAccStep3 extends StatelessWidget {
  const NewAccStep3({Key key}) : super(key: key);

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
              child: ExerciseLocation(),
            ),
            NewAccStep3Button(),
          ],
        ),
      ),
    );
  }
}
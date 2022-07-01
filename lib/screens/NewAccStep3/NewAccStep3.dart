part of 'NewAccStep3Imports.dart';

class NewAccStep3 extends StatelessWidget {
  const NewAccStep3({Key key}) : super(key: key);

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
            Container(
              alignment: Alignment.topRight,
              child: ExerciseLocation(),
            ),
            NewAccStep3Button(),
          ],
        ),
      ),
    );
  }
}
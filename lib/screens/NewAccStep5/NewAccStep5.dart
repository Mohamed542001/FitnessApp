part of 'NewAccStep5Imports.dart';

class NewAccStep5 extends StatelessWidget {
  const NewAccStep5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        padding: EdgeInsets.all(20),
        child: ListView(

          children: [
            Container(
                alignment: Alignment.center,
                child: WelcomeText()
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.topRight,
                child: DaysDropDownButton()
            ),
            SizedBox(
              height: 10,
            ),
            TrainingDays(),
            SizedBox(
              height: 10,
            ),
            TrainingWithTools(),
            DietView(),
            NewAccStep5Button(),

          ],
        ),

      ),
    );
  }
}
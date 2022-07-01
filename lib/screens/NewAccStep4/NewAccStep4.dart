part of 'NewAccStep4Imports.dart';

class NewAccStep4 extends StatelessWidget {
  const NewAccStep4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(),
            SizedBox(height: 30,),
            SlidersView(),
            NewAccStep4Button()
          ],
        ),

      ),
    );
  }
}
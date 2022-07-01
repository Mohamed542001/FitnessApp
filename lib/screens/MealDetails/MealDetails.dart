part of 'MealDetailsImports.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: AppColors.white,
        width: double.infinity,
        child: ListView(
          children: [
            MealImage(),
            MealTitle(),
            MealComponents(),
            MealPreparation(),
            TotalCalories(),
          ],
        ),
      ),
    );
  }
}
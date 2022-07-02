part of 'MealDetailsImports.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          BuildMealSliverAppBar(),
          SliverFillRemaining(
            child: Column(
              children: [
                MealTitle(),
                MealComponents(),
                MealPreparation(),
                TotalCalories(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
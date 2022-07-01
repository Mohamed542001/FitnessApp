part of 'ProgressWidgetsImports.dart';

class CardsInformation extends StatelessWidget {
  const CardsInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: CaloriesModel().caloriesData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1/0.6
                ),
                itemBuilder: (context,i)=>ProgressCaloriesCard(
                  text1: '${CaloriesModel().caloriesData[i]['name']}',
                  text2: '${CaloriesModel().caloriesData[i]['value']}',
                )
            ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: WeightModel().weightData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1/1
              ),
              itemBuilder: (context,i)=>ProgressWeightCard(
                text1: '${WeightModel().weightData[i]['name']}',
                text2: '${WeightModel().weightData[i]['value']}',
              ),
            ),
        ),
      ],
    );
  }
}

part of 'MenuWidgetsImports.dart';

class MealCard extends StatelessWidget {
  const MealCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: MealModel().mealModel.length,
        itemBuilder: (context, i) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: CustomText(
                title:
                '${MealModel().mealModel[i]['title']}',
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MealDetails(),
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        MealModel().mealModel[i]['image'],
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: AppColors.transparent,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: CustomText(
                        align: TextAlign.center,
                        color: AppColors.white,
                        size: 18,
                        fontWeight: FontWeight.bold,
                        title:
                        '${MealModel().mealModel[i]['name']}',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

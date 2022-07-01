part of 'MenuWidgetsImports.dart';

class TrainingCard extends StatelessWidget {
  const TrainingCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: TrainingModel().trainingModel.length,
        itemBuilder: (context, i) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:
              EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomText(
                title:
                '${TrainingModel().trainingModel[i]['day']}',
                size: 14,
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 150,
                child: Card(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                                child: Image.asset(
                                  TrainingModel().trainingModel[i]
                                  ['image'],
                                  fit: BoxFit.fill,
                                  width: 150,
                                  height: double.infinity,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title:
                                    '${TrainingModel().trainingModel[i]['title']}',
                                    color: AppColors.black,
                                    size: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    title:
                                    'مع كابتن ${TrainingModel().trainingModel[i]['captainName']}',
                                    color: AppColors.formTextColor,
                                    size: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    title:
                                    'الوقت المتبقي من اليوم   ${TrainingModel().trainingModel[i]['time']}',
                                    color: AppColors.formTextColor,
                                    size: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

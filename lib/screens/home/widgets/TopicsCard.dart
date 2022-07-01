part of 'HomeWidgetsImports.dart';

class TopicsCard extends StatelessWidget {
  const TopicsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'مواضيع تهمك',
            size: 18,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: HomeCardData().homeCardData.length,
            itemBuilder: (context, i) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>CompleteReading()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 200,
                width: double.infinity,
                child: Card(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(25),
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
                                  HomeCardData().homeCardData[i]
                                  ['image'],
                                  fit: BoxFit.fill,
                                  width: 60,
                                  height: double.infinity,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(

                                    title:
                                    '${HomeCardData().homeCardData[i]['title']}',
                                    color: AppColors.black,
                                    size: 18,
                                    maxLines: 5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: CustomText(
                                      title:'${HomeCardData().homeCardData[i]['text']}',
                                      size: 11,
                                      color: AppColors.blackOpacity,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_)=>CompleteReading()),
                                      );
                                    },
                                    child: CustomText(
                                      title: 'تكملة القراءة',
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      size: 14,
                                      align: TextAlign.end,
                                      fontWeight: FontWeight.bold,
                                    ),
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
          ),
        ],
      ),
    );
  }
}

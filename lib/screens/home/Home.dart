part of 'HomeImports.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الصفحة الرئيسية',
        leading: IconButton(
          onPressed: (){
            showDialog(
              context: context,
              builder: (context)=>Container(
                child: AlertDialog(

                  title: Center(
                    child: CustomText(
                      title: 'متأكد انك عايز تسجل الخروج؟',
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: FlatButton(
                          onPressed: (){
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (_)=>Login()),
                                    (route) => false
                            );
                          },
                          child: CustomText(
                            title: 'تسجيل الدخول',
                            color: AppColors.white,
                          )
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: FlatButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: CustomText(
                            title: 'رجوع',
                          )
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          icon: Icon(Icons.logout,color: AppColors.red,),
        ),
        elev: 0,
      ),
      body: Container(
        width: double.infinity,
        color: AppColors.white,
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            HomeSearch(),
            WaterGlass(),
            TopicsCard(),
          ],
        ),
      ),
    );
  }
}
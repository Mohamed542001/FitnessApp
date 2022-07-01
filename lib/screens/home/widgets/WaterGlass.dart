part of 'HomeWidgetsImports.dart';

class WaterGlass extends StatefulWidget {
  const WaterGlass({Key key}) : super(key: key);

  static GlassNumber glass;

  @override
  _WaterGlassState createState() => _WaterGlassState();
}

class _WaterGlassState extends State<WaterGlass> {
  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title:'كام كوباية مياه شربتها انهرده؟',
            size: 18,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          BlocProvider(
            create: (context)=>HomeCubit(),
            child: BlocConsumer<HomeCubit,HomeStates>(
              listener: (context,state){},
              builder: (context,state)=>GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context,i)=>InkWell(
                  onTap: (){
                    HomeCubit.get(context).isClicked(i);
                  },
                  child: Image.asset(
                    HomeCubit.get(context).boolCheck[i]?Res.fillCup:
                    Res.emptyCup,
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

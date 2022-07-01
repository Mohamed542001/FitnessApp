part of 'NewAccStep4WidgetsImports.dart';

class SlidersView extends StatelessWidget {
  const SlidersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccStep4Cubit(),
    child: BlocConsumer<NewAccStep4Cubit,NewAccStep4States>(
    listener: (context,state){},
    builder: (context,state)=> Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'السن',
            size: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 40,
            divisions: 40,
            value: NewAccStep4Cubit.get(context).value,
            label: NewAccStep4Cubit.get(context).value.round().toString(),
            onChanged: (val){
              NewAccStep4Cubit.get(context).isChanges(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الطول',
            size: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 280,
            divisions: 280,
            value: NewAccStep4Cubit.get(context).value1,
            label: NewAccStep4Cubit.get(context).value1.round().toString(),
            onChanged: (val){
              NewAccStep4Cubit.get(context).isChanges1(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الوزن',
            size: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 120,
            divisions: 120,
            value: NewAccStep4Cubit.get(context).value2,
            label: NewAccStep4Cubit.get(context).value2.round().toString(),
            onChanged: (val){
              NewAccStep4Cubit.get(context).isChanges2(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الوزن الي عايزه توصليله',
            size: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 120,
            divisions: 120,
            value: NewAccStep4Cubit.get(context).value3,
            label: NewAccStep4Cubit.get(context).value3.round().toString(),
            onChanged: (val){
              NewAccStep4Cubit.get(context).isChanges3(val);
            },
          ),
        ),
      ],
    ),
    ),
    );
  }
}





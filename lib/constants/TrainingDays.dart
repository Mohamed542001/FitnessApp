part of 'ConstantsImports.dart';


class TrainingDays extends StatelessWidget {
  const TrainingDays({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>NewAccStep5Cubit(),
      child: BlocConsumer<NewAccStep5Cubit,NewAccStep5States>(
          listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: CustomText(
                title: 'ايام التمرين',
                size: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1/0.8
                ),
                itemCount: NewAccStep5Cubit.get(context).days.length,
                itemBuilder: (context,i)=>Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: NewAccStep5Cubit.get(context).boolCheck[i],
                      onChanged: (val)=>NewAccStep5Cubit.get(context).isBoolChecked(val,i),
                    ),
                    CustomText(
                      title: NewAccStep5Cubit.get(context).days[i],
                      size: 11,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

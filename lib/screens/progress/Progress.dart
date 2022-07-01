part of 'ProgressImports.dart';

class Progress extends StatelessWidget {
  const Progress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'مستوى التقدم',
        elev: 0,
        back: false,
      ),
      body: Container(
        color: AppColors.white,
        child: ListView(
          children: [
            PercentIndicators(),
            WeeklyWeighing(),
            CardsInformation(),
            WeightProgression(),
          ],
        ),
      ),
    );
  }
}
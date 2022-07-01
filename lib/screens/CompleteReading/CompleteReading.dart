part of 'CompleteReadingImports.dart';

class CompleteReading extends StatelessWidget {
  const CompleteReading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'هل تعلم ان للتأمل فوائد صحية؟',
        bgColor: AppColors.primary,
        color: AppColors.white,
        size: 150,
      ),
      body: Container(
        color: AppColors.white,
        child: ListView(
          children: [
            CompleteReadingImage(),
            CompleteReadingText()
          ],
        ),
      ),
    );
  }
}

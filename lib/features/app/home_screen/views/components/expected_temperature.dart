part of home_view;


class ExpectedTemperature extends StatelessWidget {
  const ExpectedTemperature({Key? key, required this.maxTemperature,required this.minTemperature,required this.days,required this.date}) : super(key: key);

  final String maxTemperature;
  final String minTemperature;
  final String days;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextApp(
                    text: maxTemperature,
                  color: ColorResource.white,
                  fontSize: 20.sp,
                ),TextApp(
                  text: '/',
                  color: ColorResource.white,
                  fontSize: 20.sp,
                ),
                TextApp(
                  text: minTemperature,
                  color: ColorResource.white,
                  fontSize: 20.sp,
                ),
              ],
            ),
            SizedBox(width: 10.w),
            TextApp(
              text: 'Day: $days',
              color: ColorResource.white,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              maxLine: 1,
            ),
          ],
        ),
      ),
    );
  }
}

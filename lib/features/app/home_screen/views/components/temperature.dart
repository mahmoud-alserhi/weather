part of home_view;


class Temperature extends StatelessWidget {
  const Temperature({Key? key, required this.temperature,required this.airQuality}) : super(key: key);

  final String temperature;
  final String airQuality;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextApp(
              text: temperature,
            color: ColorResource.white,
            fontSize: 33.sp,
          ),
          SizedBox(height: 10.h),
          Container(
            width: 150.w,
            height: 24.h,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: ColorResource.blue.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: TextApp(
              text: 'Air Quality: $airQuality',
              color: ColorResource.white,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              maxLine: 1,
            ),
          ),
        ],
      ),
    );
  }
}

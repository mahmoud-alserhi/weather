part of home_view;


class Header extends StatelessWidget {
  const Header({Key? key, required this.location,required this.date,}) : super(key: key);

  final String location;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 25.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextApp(
                text: location,
              color: ColorResource.white,
              fontSize: 20.sp,

            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: TextApp(
              text: date,
              color: ColorResource.white,
              fontSize: 20.sp,

            ),
          ),
        ],
      ),
    );
  }
}

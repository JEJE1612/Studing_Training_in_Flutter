import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset('assets/svg/logopart_1.svg',color:Color.fromRGBO(36, 124, 255, 0.09),),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end:Alignment.topCenter,
              stops:const [0.14,0.4] 
              )
          ),
          child: Image.asset('assets/img/DoctorImage.png', width: 310,),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \n Appointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBlod.copyWith(
              height: 1.4
            ),

          ),
        )
       
      ],

    );
  }
}
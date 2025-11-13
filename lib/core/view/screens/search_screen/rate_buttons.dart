import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';

class RateButton extends StatefulWidget {
  const RateButton({super.key});

  @override
  State<RateButton> createState() => _CustomMultiChoiceButtonState();
}

int i = 0;

class _CustomMultiChoiceButtonState extends State<RateButton> {
  // bool isTapped=false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      textDirection: TextDirection.rtl,
      spacing: AppDimensions.size8,
      runSpacing: AppDimensions.size8,
      children: [
        // for(int i = 0;i<5;i++)...{
        RadioGroupContainer(),

        // InkWell(
        //   onTap: (){
        //     setState(() {
        //       isTapped=!isTapped;
        //     });
        //   },
        //   child: Container(
        //     padding: EdgeInsets.symmetric(horizontal: AppDimensions.size16,vertical: AppDimensions.size8),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(AppDimensions.radius8),
        //       color: isTapped ?AppColors.primaryColor:AppColors.greyColor,
        //     ),
        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       spacing: AppDimensions.size4,
        //       children: [
        //         SvgPicture.asset(AppIcons.starIcon,height: 14.h,width: 14.w,colorFilter: ColorFilter.mode(isTapped ?AppColors.secondaryColor:AppColors.greyTextColor, BlendMode.srcIn),),
        //         Text('$i',style: TextStyle(
        //           fontFamily: 'Cairo',
        //           fontSize: 16,
        //           color:isTapped? AppColors.whiteColor:AppColors.greyTextColor,
        //           fontWeight: AppTextStyles.semiBold,
        //         ),),
        //       ],
        //     ),
        //   ),
        // ),
        // }
      ],
    );
  }
}

class RadioGroupContainer extends StatefulWidget {
  const RadioGroupContainer({super.key});

  @override
  State<RadioGroupContainer> createState() => _RadioGroupContainerState();
}

class _RadioGroupContainerState extends State<RadioGroupContainer> {
  // This state holds the index of the CURRENTLY selected button.
  // We initialize it to -1 (meaning nothing is selected).
  int _selectedIndex = -1;

  // List of indices we want to display (e.g., ratings 1 through 5)
  final List<int> indices = [5,4,3,2,1];

  // Callback function to update the state when a button is tapped
  void _selectIndex(int index) {
    setState(() {
      if (_selectedIndex != index) {
        _selectedIndex = index;
      } else {
        _selectedIndex = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      textDirection: TextDirection.rtl,
      spacing: AppDimensions.size8,
      runSpacing: AppDimensions.size8,
      children: indices.map((index) {
        // We pass the index and the current selection state down to the child
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.size4 / 2),
          child: Bb(
            // Pass the index this button represents
            buttonIndex: index,
            // Pass the state: Is this button the currently selected one?
            isSelected: index == _selectedIndex,
            // Pass the callback function for when this button is tapped
            onTap: _selectIndex,
          ),
        );
      }).toList(),
    );
  }
}

// 2. THE CHILD WIDGET (Now Stateless): Handles the look and feel
class Bb extends StatelessWidget {
  final int buttonIndex;
  final bool isSelected;

  // This function tells the parent which index was tapped
  final void Function(int index) onTap;

  const Bb({
    required this.buttonIndex,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Determine colors based on the state passed from the parent
    final Color buttonColor = isSelected
        ? AppColors.primaryColor
        : AppColors.greyColor;
    final Color iconColor = isSelected
        ? AppColors.secondaryColor
        : AppColors.greyTextColor;
    final Color textColor = isSelected
        ? AppColors.whiteColor
        : AppColors.greyTextColor;

    return InkWell(
      onTap: () {
        // When tapped, call the parent's function, telling it which index was tapped
        onTap(buttonIndex);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.size16,
          vertical: AppDimensions.size8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.radius8),
          color: buttonColor,

          // Added a subtle shadow for better visual depth
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          // Using SizedBox for spacing instead of a non-standard 'spacing' property
          children: [
            // Using a mock SVG for demonstration. Replace with your actual asset.
            SvgPicture.asset(
              AppIcons.starIcon,
              height: 14.h,
              width: 14.w,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
            SizedBox(width: AppDimensions.size4),
            // Spacing between icon and text
            Text(
              '$buttonIndex', // Changed from widget.index to buttonIndex
              style: TextStyle(
                fontFamily: 'Cairo', // Assuming 'Cairo' is available
                fontSize: 16,
                color: textColor,
                fontWeight: AppTextStyles.semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// class Bb extends StatefulWidget {
//   // final int i;
//   late int index;
//   Bb({
//     // required this.i,
//     required this.index,super.key});
//
//   @override
//   State<Bb> createState() => _BbState();
// }
//
// class _BbState extends State<Bb> {
//   int current =0;
//
//   @override
//   Widget build(BuildContext context) {
//     bool isTapped= i == widget.index;
//   return InkWell(
//       onTap: (){
//         setState(() {
//           i = widget.index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: AppDimensions.size16,vertical: AppDimensions.size8),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(AppDimensions.radius8),
//           color: isTapped ?AppColors.primaryColor:AppColors.greyColor,
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           spacing: AppDimensions.size4,
//           children: [
//             SvgPicture.asset(AppIcons.starIcon,height: 14.h,width: 14.w,colorFilter: ColorFilter.mode(isTapped ?AppColors.secondaryColor:AppColors.greyTextColor, BlendMode.srcIn),),
//             Text('${widget.index}',style: TextStyle(
//               fontFamily: 'Cairo',
//               fontSize: 16,
//               color:isTapped? AppColors.whiteColor:AppColors.greyTextColor,
//               fontWeight: AppTextStyles.semiBold,
//             ),),
//           ],
//         ),
//       ),
//     );
//   }
// }

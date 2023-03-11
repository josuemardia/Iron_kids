import 'package:flutter/material.dart';
import 'package:iron_kids/main.dart';
import 'package:iron_kids/styles/app_theme.dart';

class CardRecetaSmall extends StatelessWidget {
  final String linkImg;
  final String titulo;
  final String tiempo;
  final String likes;
  final String edad;

  const CardRecetaSmall({Key? key, required this.linkImg, required this.titulo, required this.tiempo, required this.likes, required this.edad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppTheme.borderRadiusL,
        color: AppTheme.gray100,
      ),
      child: SizedBox(
        width: screenW * 1 / 3 + 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de receta y titulo
            Stack(
              children: [
                
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          AppTheme.borderRadiusL,
                      image: DecorationImage(
                        image: NetworkImage(linkImg),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          AppTheme.borderRadiusL,
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromRGBO(0, 0, 0, 0.5),
                        ],
                        stops: [
                          0.4,
                          1
                        ]
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(AppTheme.spacing4),
                      child: Text(
                        titulo,
                        style: textTheme.bodyMediumSemiBold.copyWith(color: AppTheme.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            AppTheme.spacingWidget2,

            // Datos de receta
            Padding(
              padding: const EdgeInsets.all(AppTheme.spacing3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tiempo de cocina
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.timer_outlined, color: AppTheme.gray500, size: 20,),
                          const SizedBox(width: 4),
                          Text(tiempo, style: textTheme.bodySmallMedium.copyWith(color: AppTheme.gray500)),
                        ],
                      ),
              
                      AppTheme.spacingWidget3,
                          
                      // Likes
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.thumb_up_outlined, color: AppTheme.gray500, size: 20,),
                          const SizedBox(width: 4),
                          Text(likes, style: textTheme.bodySmallMedium.copyWith(color: AppTheme.gray500)),
                        ],
                      ),
                    ],
                  ),
                          
                  const SizedBox(height: 8),
                          
                  // Edad de niño
                  FittedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.child_care, color: AppTheme.gray500, size: 20,),
                        const SizedBox(width: 4),
                        Text(edad, style: textTheme.bodySmallMedium.copyWith(color: AppTheme.gray500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

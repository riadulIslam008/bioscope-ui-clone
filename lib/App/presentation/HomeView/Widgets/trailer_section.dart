import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_button.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class TrailerSection extends StatelessWidget {
  const TrailerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: ScreenDetails.screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 190,
            width: ScreenDetails.screenWidth,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.moviebg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomeText(name: "trailer".toUpperCase()),
                      ),
                    ),
                    const Center(
                      child:
                          Icon(Icons.play_arrow, color: Colors.white, size: 70),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Movie Name - Trailer",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.caption,
              children: const [
                TextSpan(text: "Promotion | "),
                TextSpan(text: "2022"),
              ],
            ),
          ),
          const SizedBox(height: 10),
           CustomeButton(
            background: AppColor.green900,
            text: "Watch trailer",
            icon: Icons.play_arrow,
            iconAndtextColor: Colors.white,
            onTap: (){},
          ),
          const SizedBox(height: 10),
           Text(
            "Tic-tac-toe (also known as noughts and crosses) is a puzzle game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical,or diagonal row wins the game.",
            textAlign: TextAlign.start,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}

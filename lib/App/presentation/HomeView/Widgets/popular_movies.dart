import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:flutter/material.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({
    Key? key,
    required this.channel,
  }) : super(key: key);

  final String channel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          NameAndIcon(channel: channel,onTap: (){}),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (var itemList in AppList.popularMovieList)
                  Container(
                    height: 150,
                    width: 180,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(itemList.imageLink),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(name: itemList.movieName),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            CustomeText(name: itemList.rating.toString()),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomeText extends StatelessWidget {
  const CustomeText({
    Key? key,
    required this.name,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.white,  this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String name;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

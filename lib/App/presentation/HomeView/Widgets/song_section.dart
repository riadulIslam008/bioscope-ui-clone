import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class SongSection extends StatelessWidget {
  const SongSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
             NameAndIcon(channel: "Song Section",onTap: (){}),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  for (var itemList in AppList.popularMovieList)
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 120,
                      width: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(itemList.imageLink),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                        child: Row(
                          children: [
                            const CustomeText(name: "song name"),
                            const Spacer(),
                            CustomeText(name: itemList.rating.toString()),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            )
                          ],
                        ),
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

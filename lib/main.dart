import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import './color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Grey,
        appBar: AppBar(
          backgroundColor: Grey,
          elevation: 0,
          title: Row(
            children: [
              Text(
                faker.person.name(),
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: [Merah, Orange])),
                    ),
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                    ),
                    const CircleAvatar(
                      radius: 47,
                      backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300"),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "0,000",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text("Posts")
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "0,000",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text("Followers")
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "0,000",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text("Following"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              faker.person.name(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            RichText(
              text: const TextSpan(
                text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(color: Colors.black, fontSize: 12),
                children: <TextSpan>[
                  TextSpan(
                    text: "#hashtag",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "\nLink goes here",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Story(
                  imgUrl: "https://picsum.photos/id/400/200/300",
                  storyName: "Story 1",
                ),
                Story(
                  imgUrl: "https://picsum.photos/id/401/200/300",
                  storyName: "Story 2",
                ),
                Story(
                  imgUrl: "https://picsum.photos/id/402/200/300",
                  storyName: "Story 3",
                ),
                Story(
                  imgUrl: "https://picsum.photos/id/403/200/300",
                  storyName: "Story 4",
                ),
                Story(
                  imgUrl: "https://picsum.photos/204/300?grayscale",
                  storyName: "Makan",
                ),
              ],
            ),
            // buat 20 ajah
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on_outlined),
                Icon(
                  Icons.account_box,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
              itemCount: 20,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(index);
                return Container(
                  height: 24,
                  child: Image.network(
                    "https://picsum.photos/id/${index + 20}/200/300",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
        // well done -> ngulik bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: "cari",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ondemand_video,
                color: Colors.black,
              ),
              label: "video",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.badge_rounded,
                color: Colors.black,
              ),
              label: "tas",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.black,
              ),
              label: "akun",
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  final String imgUrl;
  final String storyName;

  Story({required this.imgUrl, required this.storyName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Grey,
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 1, blurRadius: 2)],
              ),
            ),
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(imgUrl),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(storyName)
      ],
    );
  }
}

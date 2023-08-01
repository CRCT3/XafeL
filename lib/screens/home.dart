import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hello_world/helpers/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final resWidth = MediaQuery.of(context).size.width;
    final resHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 32,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.photo_rounded),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: resHeight * 0.025,
          ),
          Text(
            "Your Balance",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Container(
            height: resHeight * 0.125,
            decoration: const BoxDecoration(
                color: ksecondarycolor,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "June 14, 2023",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$27,802.05",
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "15%",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    color: kparmarycoor,
                    size: 35,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.arrow_downward_outlined,
                    color: kparmarycoor,
                    size: 35,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.food_bank,
                    color: kparmarycoor,
                    size: 35,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.charging_station_rounded,
                    color: kparmarycoor,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Activities",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Container(
                width: resWidth * 0.25,
                decoration: const BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "This Week",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: resHeight * 0.025,
          )
        ],
      ),
    );
  }
}

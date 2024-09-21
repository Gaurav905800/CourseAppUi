import 'package:course_app_ui/models/course.dart';
import 'package:course_app_ui/models/course_model.dart';
import 'package:course_app_ui/widgets/circular_icon.dart';
import 'package:course_app_ui/widgets/custom_list_tile.dart';
import 'package:course_app_ui/widgets/custom_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final CourseModel? courseModel;
  const HomePage({super.key, this.courseModel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Christiana Amandla',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Lets Learning to smart',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      const Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircularIcon(
                              icon: Icon(Icons.search_outlined),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 182, 219, 96),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 208, 227, 161),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Mathematics Course'),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 182, 219, 96),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text(
                                        '19 Nov,2023',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 208, 227, 161),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Color.fromARGB(255, 180, 208, 115),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Completed'),
                                  SizedBox(height: 5),
                                  Text(
                                    '20',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 55,
                                child: VerticalDivider(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  thickness: 1,
                                  width: 20,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 208, 227, 161),
                                child: Icon(
                                  Icons.schedule,
                                  color: Color.fromARGB(255, 180, 208, 115),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hours Spent'),
                                  SizedBox(height: 5),
                                  Text(
                                    '455',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Course',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      itemCount: courseList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final course = courseList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTile(
                            imageUrl: course.imageUrl,
                            text: course.courseName,
                            rating: course.rating,
                            timeing: course.timing,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Course',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: courseList.length,
                      itemBuilder: (context, index) {
                        final course = courseList[index];

                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: CustomListTile(
                              imageUrl: course.imageUrl,
                              text: course.courseName,
                              rating: 4.8,
                              timeing: course.timing),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ));
  }
}

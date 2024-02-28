import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  TabBarDemo({super.key});

  //-----------------------------------
  List<String> values1 = [
    '05:00',
    '05:40',
    '06:20',
    '06:40',
    '07:50',
    '08:40',
    '09:20',
    '10:10',
    '10:50',
    '12:00',
    '13:00',
    '14:15',
    '15:10',
    '15:15',
    '16:15',
    '16:30',
    '16:50',
    '17:25',
    '17:40',
    '18:25',
    '18:50',
    '20:10',
    '21:30',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 5,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0, // Указываем расстояние между строками
                  children: values1.map((value) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // Указываем цвет контейнера
                        borderRadius: BorderRadius.circular(
                            8.0), // Указываем радиус скругления углов
                      ),
                      alignment: Alignment
                          .center, // Указываем выравнивание текста по центру
                      child: Text(
                        value, // Выводим значение из списка
                        style: const TextStyle(
                          color: Colors.white, // Указываем цвет текста
                          fontSize: 18.0, // Указываем размер шрифта
                        ),
                      ),
                    );
                  }).toList(), // Преобразуем список значений в список виджетов
                ),
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}

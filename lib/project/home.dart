import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

// форматирование значения времени
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  final baseTime = DateTime(2024, 01, 01, 00, 00);
  final time = baseTime.add(Duration(minutes: (value.toInt() * 30)));

  final formatter = DateFormat('HH:mm');
  final formattedTime = formatter.format(time);

  const style = TextStyle(color: Colors.white, fontSize: 9);
  Widget text = Text(formattedTime, style: style);

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10.0,
    child: text,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(color: Colors.white, fontSize: 12);
  String text = '';
  switch (value.toInt()) {
    case 10:
      text = '10';
      break;
    case 30:
      text = '30';
      break;
    case 50:
      text = '50';
      break;
    case 100:
      text = '100';
      break;
    default:
      text = '';
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 8.0,
    child: Text(text, style: style),
  );
}

class _MainShellState extends State<MainShell> {
  Map<String, dynamic> sampleData = {
    "1": {
      "ip": "8.8.8.8",
      "hostname": "ya.ru",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(22.8, 32.1),
        const FlSpot(28, 45),
        const FlSpot(29.5, 13),
        const FlSpot(30, 14),
      ]
    },
    "2": {
      "ip": "87.250.250.242",
      "hostname": "ya.ru",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(29.5, 13),
        const FlSpot(30, 14),
      ]
    },
    "3": {
      "ip": "87.250.250.242",
      "hostname": "ya.ruscs",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(22.8, 32.1),
        const FlSpot(28, 45),
        const FlSpot(29.5, 13),
        const FlSpot(30, 14),
      ]
    },
    "4": {
      "ip": "87.250.250.242",
      "hostname": "ya.ru",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(22.8, 32.1),
      ]
    },
    "5": {
      "ip": "87.250.250.242",
      "hostname": "gmail.com",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(30, 14),
      ]
    },
    "6": {
      "ip": "87.250.250.242",
      "hostname": "ya.ru",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(28, 45),
        const FlSpot(29.5, 13),
        const FlSpot(30, 14),
      ]
    },
    "7": {
      "ip": "87.250.250.242",
      "hostname": "ya.ru",
      "chartData": [
        const FlSpot(0, 10),
        const FlSpot(2.6, 20),
        const FlSpot(4.9, 52),
        const FlSpot(6.8, 13.1),
        const FlSpot(8, 45),
        const FlSpot(9.5, 13),
        const FlSpot(11, 14),
        const FlSpot(11.5, 30),
        const FlSpot(13.6, 20),
        const FlSpot(14.9, 52),
        const FlSpot(16.8, 13.1),
        const FlSpot(18, 45),
        const FlSpot(19.5, 13),
        const FlSpot(20, 14),
        const FlSpot(22.8, 32.1),
        const FlSpot(28, 45),
      ]
    },
  };
  String currentHostname = '';

  List<Color> gradientColors = [
    const Color(0xffF2E635),
    const Color(0xffF2E635).withOpacity(0),
  ];

  @override
  void initState() {
    super.initState();
    currentHostname = sampleData["1"]["hostname"];
  }

  // Состояние для хранения индекса текущего выбранного IP
  int selectedIndex = -1;

  // Метод для обновления состояния при выборе IP
  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
      currentHostname = sampleData[(index + 1).toString()]["hostname"];
    });
  }

  LineChartBarData lineChartBarData() {
    // Проверяем, что selectedIndex находится в допустимом диапазоне и соответствующий элемент существует
    String key = (selectedIndex + 1).toString();
    if (selectedIndex >= 0 &&
        sampleData.containsKey(key) &&
        sampleData[key] != null &&
        sampleData[key]["chartData"] != null) {
      return LineChartBarData(
        spots: sampleData[key]["chartData"],
        isCurved: false,
        color: Colors.amber,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradientColors,
            stops: [0.0, 1.0],
          ),
        ),
      );
    } else {
      // Возвращаем пустые данные, если условие не выполнено
      return LineChartBarData(spots: []);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pinger',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: const Color(0xff201F20),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView.builder(
                  itemCount: sampleData.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> item =
                        sampleData[(index + 1).toString()];
                    String ipAddress = item["ip"];
                    String hostname = item["hostname"];
                    return TextButton(
                      onPressed: () {
                        updateSelectedIndex(index);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: selectedIndex == index
                            ? Colors.blue
                            : const Color(0xff201F20),
                      ),
                      child: ListTile(
                        title: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                ipAddress,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.45,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: const Color(0xff201F20),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: LineChart(
                        LineChartData(
                          gridData: FlGridData(
                            show: true,
                            getDrawingHorizontalLine: (value) {
                              return const FlLine(
                                color: Color(0xff37434d),
                                strokeWidth: 1,
                              );
                            },
                            drawVerticalLine: true,
                          ),
                          titlesData: const FlTitlesData(
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: bottomTitleWidgets,
                                reservedSize: 30,
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: leftTitleWidgets,
                                reservedSize: 40,
                              ),
                            ),
                          ),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                                color: const Color(0xff37434d), width: 1),
                          ),
                          minX: 0,
                          maxX: 48,
                          minY: 0,
                          maxY: 105,
                          lineBarsData: [lineChartBarData()],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff201F20),
                              minimumSize: const Size(70, 50)),
                          onPressed: () {},
                          child: Text(
                            currentHostname,
                            style: const TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff201F20),
                              minimumSize: const Size(70, 50)),
                          onPressed: () {},
                          child: const Text(
                            'Скачать',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

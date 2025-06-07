import 'dart:ui';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // double temp = 0;
  // bool isLoading = false;

  // @override
  // void initState() {
  //   super.initState();
  //   getCurrentWeather();
  // }

  // final weather = getCurrentWeather();

  late Future<Map<String, dynamic>> weather;
  Future<Map<String, dynamic>> getCurrentWeather() async {
    try {
      setState(() {
        // isLoading = true;
      });

      String cityName = 'India';
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName,Asia&APPID=$openWeatherApiKey',
        ),
      );
      final data = jsonDecode(res.body);

      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }

      // print('data-->  ' + );
      // print(data['list'][0]['main']['temp']);

      // setState(() {
      // temp = data['list'][0]['main']['temp'];

      // isLoading = false;
      // });

      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    super.initState();
    weather = getCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // GestureDetector(
          //   onTap: () {
          //     print('refresh');
          //   },
          //   child: Icon(Icons.refresh),
          // ),

          // -----------------------

          // InkWell(
          //   onTap: () {
          //     print('refresh');
          //   },
          //   child: Icon(Icons.refresh),
          // ),

          //---------------------
          IconButton(
            onPressed: () {
              setState(() {
                weather = getCurrentWeather();
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),

      body:
      // temp == 0
      // ? const CircularProgressIndicator()
      // : Padding(
      FutureBuilder(
        // future: getCurrentWeather(),
        future: weather,
        builder: (context, snapshot) {
          // snapshot? basically snapshot is a class which allows us to handle states on our app , we can handle loading state, an error state , data state, we can handle this using async snapshot

          // print(snapshot);
          // print(snapshot.runtimeType);

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          final data = snapshot.data!;

          final currentWeatherData = data['list'][0];

          final currentTemp = data['list'][0]['main']['temp'];

          final currentSky = data['list'][0]['weather'][0]['main'];

          final currentPressure = currentWeatherData['main']['pressure'];

          final currentWindSpeed = currentWeatherData['wind']['speed'];

          final currentHumidity = currentWeatherData['main']['humidity'];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //main card
                // const Placeholder(fallbackHeight: 250),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                // '$temp k',
                                '$currentTemp K',
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                currentSky == 'Clouds' || currentSky == 'Rain'
                                    ? Icons.cloud
                                    : Icons.sunny,
                                size: 68,
                              ),

                              const SizedBox(height: 10),

                              Text(currentSky, style: TextStyle(fontSize: 22)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // const Placeholder(fallbackHeight: 150),
                const Text(
                  'Hourly Forecast',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                //NOTE:-> in flutter we don't need to add bracket for 'for-loop' instead we want to show more than one item then we can use 'for() ...[]'

                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       for (int i = 1; i < 5; i++)
                //         HourlyForecastItem(
                //           time: data['list'][i]['dt'].toString(),
                //           icon:
                //               data['list'][i]['weather'][0]['main'] ==
                //                           'Clouds' ||
                //                       data['list'][i]['weather'][0]['main'] ==
                //                           'Rain'
                //                   ? Icons.cloud
                //                   : Icons.cloud,
                //           temperature:
                //               data['list'][i]['main']['temp'].toString(),
                //         ),
                //     ],
                //   ),
                // ),

                // listView
                // ListViewBuilder:- builds only on demands
                // it only builds item when we scroll, basically when we have requirement then only it show next set of item
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final hourlyForecast = data['list'][index + 1];
                      final hourlySky =
                          data['list'][index + 1]['weather'][0]['main'];

                      final hourlyTemp =
                          hourlyForecast['main']['temp'].toString();

                      final time = DateTime.parse(hourlyForecast['dt_txt']);

                      return HourlyForecastItem(
                        time: DateFormat.j().format(time),
                        temperature: hourlyTemp,
                        icon:
                            hourlySky == 'Clouds' || hourlySky == 'Rain'
                                ? Icons.cloud
                                : Icons.sunny,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  'Additional Forecast',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditionalInfoItem(
                      icon: Icons.water_drop,
                      label: 'Humidity',
                      value: currentHumidity.toString(),
                    ),
                    AdditionalInfoItem(
                      icon: Icons.air,
                      label: 'Wind Speed',
                      value: currentWindSpeed.toString(),
                    ),
                    AdditionalInfoItem(
                      icon: Icons.beach_access,
                      label: "Pressure",
                      value: currentPressure.toString(),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

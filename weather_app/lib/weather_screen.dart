import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
      ),

      body: Padding(
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
                            '28° C',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.cloud, size: 68),

                          const SizedBox(height: 10),

                          Text('Rain', style: TextStyle(fontSize: 22)),
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
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: '01:02',
                    icon: Icons.cloud,
                    temperature: '28.22',
                  ),

                  HourlyForecastItem(
                    time: '02:02',
                    icon: Icons.cloud,
                    temperature: '21.22',
                  ),

                  HourlyForecastItem(
                    time: '03:00',
                    icon: Icons.cloud,
                    temperature: '19.20',
                  ),

                  HourlyForecastItem(
                    time: '05:20',
                    icon: Icons.cloud,
                    temperature: '12.11',
                  ),

                  HourlyForecastItem(
                    time: '012:22',
                    icon: Icons.cloud,
                    temperature: '08.22',
                  ),

                  HourlyForecastItem(
                    time: '03:02',
                    icon: Icons.cloud,
                    temperature: '08.32',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Additional Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '23',
                ),
                AdditionalInfoItem(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '7.4',
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  label: "Pressure",
                  value: '1000',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

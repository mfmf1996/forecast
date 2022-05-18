import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/View/forecast_weather.dart';
import 'package:untitled2/View/now_weather.dart';
import 'package:untitled2/View/city.dart';








class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  MainPageState createState() => MainPageState();

}

class MainPageState extends State<MainPage> {
  forecast_weather? _forecastWeather;
  now_weather? _nowWeather;
@override


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://static01.nyt.com/images/2014/12/11/technology/personaltech/11machin-illo/11machin-illo-superJumbo-v3.jpg?quality=75&auto=webp"),
          //背景
          fit: BoxFit.cover, // 全屏
        ),
      ),
      child: _weatherBody(),
    );
  }

  Widget _weatherBody() {
    return FutureBuilder(
        future: Dio().get(
            "http://api.weatherapi.com/v1/current.json?key=dc8b919fa6b143f6bff83416220505&q=$cityID&aqi=no"),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Response response = snapshot.data;
            //发生错误
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            _nowWeather = now_weather.fromJson(response.data);
          }


          return Scaffold(
              backgroundColor: Colors.transparent, //背景透明
              appBar: AppBar(
                leading: GestureDetector(
                  child: const Icon(
                    Icons.search,
                  ),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return const City();
                    }));
                  },
                ),
                centerTitle: true,
                title: Text(
                  cityID,
                  style: const TextStyle(fontSize: 25.0),
                ),
                backgroundColor: Colors.transparent,
                //背景透明
                actions: <Widget>[ //右侧Widget，相当于Android Toolbar中的menu
                  Container(
                    alignment: Alignment.center, //向中间对齐
                    child: Text(
                      "update:""${_nowWeather?.location.localtime}",
                      textAlign: TextAlign.center, //文字向中间对齐
                    ),
                  )
                ],
              ),
              body: SingleChildScrollView( // 由于到时候整个页面一个屏幕可能放不下，就放置了一个滚动布局
                child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "${_nowWeather?.current.condition.text}",
                          style: const TextStyle(
                            fontSize: 50.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "${_nowWeather?.current.tempC}""°C",
                          style: const TextStyle(
                            fontSize: 50.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "uv""${_nowWeather?.current.uv}",
                          style: const TextStyle(
                            fontSize: 50.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 15.0,
                        ),
                        child: Container(
                          color: Colors.black54,
                          child: _weatherList(), //3天天气预报
                        ),
                      ),
                    ]
                ),
              )
          );
        });
  }


  //List<String> dates = ["2022/05/01", "2022/05/02", "2022/05/03"];
  //List<String> temperatures = ["26/14", "27/15", "28/16"];
  //List<String> texts = ["Sunny", "Cloudy", "Rainy"];
  //List<String> uvs = ["6", "5", "4"];

  Widget _weatherList() {
    return FutureBuilder(
        future: Dio().get(
            "http://api.weatherapi.com/v1/forecast.json?key=dc8b919fa6b143f6bff83416220505&q=$cityID&days=3&aqi=no&alerts=no"),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Response response = snapshot.data;
            //发生错误
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            _forecastWeather = forecast_weather.fromJson(response.data);
          }

          return Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forecast",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  //这个是指根据ListView所有子Widget的长度来设定ListView的长度
                  physics: const NeverScrollableScrollPhysics(),
                  //禁止ListView自己的滑动，因为我们在外面用了个SingleChildScrollView，我们通过他的滑动就可以了
                  itemCount: 3,
                  //ListView子项个数
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //这个是Row的主轴的子项的分布格式，spaceBetween是指平均分布
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            "${_forecastWeather?.forecast.forecastday[index]
                                .date}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${_forecastWeather?.forecast.forecastday[index]
                                .day.condition.text}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${_forecastWeather?.forecast.forecastday[index]
                                .day.maxtempC}""°C/""${_forecastWeather
                                ?.forecast.forecastday[index]
                                .day.mintempC}""°C",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "uv""${_forecastWeather?.forecast.forecastday[index]
                                .day.uv}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          );
        });
  }
}

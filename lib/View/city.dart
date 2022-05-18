import 'package:flutter/material.dart';
import 'package:untitled2/View/main_page.dart';


String cityID = "Sydney";
class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  CityState createState() => CityState();
}


class CityState extends State<City> {
  var cityID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:const Text('City')
        ),
        body:Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration:const InputDecoration(
                      hintText: "City"
                  ),
                  // 绑定控制器
                  controller: cityID,
                  // 输入改变以后的事件
                  onChanged:(value){
                    setState(() {
                      cityID.text = value;
                    });
                    cityID.selection = TextSelection.fromPosition(TextPosition(
                        affinity: TextAffinity.downstream,
                        offset: cityID.text.length
                    ));
                  },
                ),

                const SizedBox(height:20),
                SizedBox(
                  // 自适应外层宽度
                    width:double.infinity,
                    child:RaisedButton(
                      child:const Text("Change"),

                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          
                        return const MainPage();
                        }));
                      },
                      color:Colors.blue,
                      textColor:Colors.white,
                    )
                )
              ],
            )
        )
    );
  }
}



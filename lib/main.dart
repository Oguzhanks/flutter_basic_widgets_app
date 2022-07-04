import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold: uygulamada genel sayfa çerçevesini oluşturmak için bir widgettır.
    return Scaffold(
      //appBar: scaffold widgetta üst çerçeveyi oluşturmak içindir
      appBar: AppBar(
        //Text: String yani metinsel değişkenleri ekrana yazdırmak ve stillendirmek için bir widgettır.
        title: const Text('Temel Widgetlar'),
      ),
      //body: scaffold widgetta orta çerçeveyi oluşturmak içindir
      //ListView: children parametresindeki widgetlar ekrana sığamadığında scrollama yapmaya olanak verir.
      body: ListView(
        children: [
          //Column: children paramtresinde verilen widgetları üst üste koymak için bir widgettır.
          Column(
            //mainAxisSize: Column genişliğini [ maksimum | minimum ] yapar,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                //Padding: içindeki widgeta içeriden dışarıya boşluk vermke için bir widgettır.
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  //border: çerçeve vermek içindir.
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                ),
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.blue,
              ),
              //Row: children paramtresinde verilen widgetları yan yana koymak için bir widgettır.
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          _buttons(),
        ],
      ),
      //bottomNavigationBar: scaffold widgetta alt çerçeveyi oluşturmak içindir
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.amber,
      ),
    );
  }

  Widget _buttons() {
    // Button Widgetlar
    return Column(
      children: [
        TextButton(
          onPressed: _onPress,
          child: const Text('TextButton'),
        ),
        IconButton(
          onPressed: _onPress,
          //Icon: icon göstermek ve stillendirmek için bir widgettır.
          icon: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: _onPress,
          child: const Text('TextButton'),
        ),
        OutlinedButton(
          onPressed: _onPress,
          child: const Text('TextButton'),
        ),
        //InkWell | GestureDetector: childaki widgeta tıklanma özeliği verir
        GestureDetector(
          onTap: _onPress,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text(
                'Sixth',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }

  void _onPress() {
    print('Tıklandı');
  }
}

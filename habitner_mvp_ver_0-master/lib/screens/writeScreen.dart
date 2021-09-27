
import 'package:flutter/material.dart';
import 'package:habitner_mvp_ver_0/constant/constants.dart';

class WritePage extends StatefulWidget {
  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {

  bool isButtonEnable = false;
  List<bool> a = List.generate(15, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("작심 문장")),
      body: Column(
        children:[
                    SizedBox(
                      height: 400,
                      child: Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: 15,
                          itemBuilder: (context, index) {

                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: TextField(
                                  onChanged: (String content){
                                    if (content.length >= 1)
                                      a[index] = true;
                                    else
                                      a[index] = false;
                                    setState((){
                                      isButtonEnable = a[0];
                                      for (int i = 1; i < 15; i++){
                                        isButtonEnable = isButtonEnable & a[i];
                                      }
                                    });
                                    },
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: '내용 입력',
                                    labelText: '작심문장 ${index+1}',
                                  )
                              ),
                            );

                          }
                        ),
                      ),
                    )
          ,
          pad1,
          _checkButton(context)
        ],
      )
    );
  }

  FlatButton _checkButton(BuildContext context) {
    return isButtonEnable ? FlatButton(
          onPressed: (){
            Navigator.pop(context);
            // store 기능
          },
          child: Text("save and quit"),
        )
        :
    FlatButton(
      onPressed: (){
        print(isButtonEnable);
        print("작심문장 다 채우세요!!");
      },
      child: Text("save and quit"),
    );
  }
}

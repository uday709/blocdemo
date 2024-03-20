import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'my_view_bloc.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => MyViewBloc(),
        )
      ],
      child: MaterialApp(
        home: MyBloc_View(),
      )));
}

class MyBloc_View extends StatefulWidget {
  const MyBloc_View({super.key});

  @override
  State<MyBloc_View> createState() => _MyBloc_ViewState();
}

class _MyBloc_ViewState extends State<MyBloc_View> {
  MyViewBloc? myViewBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myViewBloc = BlocProvider.of<MyViewBloc>(context);

    myViewBloc!.add(MyintialValueEvent(120));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [BlocBuilder<MyViewBloc, MyViewState>(
          builder: (context, state) {

            if(state is MyintiaalValueState)
              {
                return Text("${state.i}",style: TextStyle(fontSize: 50),);
              }

            else {
              return Text("null");
            }

          },
        ),
          ElevatedButton(onPressed: () {
            myViewBloc!.add(Myincrement());


          }, child: Text("add"))
        ],
      ),
    );
  }
}

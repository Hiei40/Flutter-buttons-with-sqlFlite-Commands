import 'package:flutter/material.dart';
import 'package:untitled3/SqlDb.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
SqlDb sqlDb =SqlDb();
    return Scaffold(

      appBar: AppBar(

        title: Text('Todo List'),
      ),
body: Container(
        child:
        Column(children: [
          Center(

            child: MaterialButton(onPressed: ()async{
              // INSERT into 'notes' ('note') VALUES ('note one')
              try {
                int response =  await sqlDb.insertData(
                    'INSERT into notes (note) VALUES ("noteone")'
                );
                print("$response");
              } catch (error) {
                print("Error occurred: $error");
              }
            },
    color:Colors.red,
              child: Text('Insert data') ,
    ),
          ),
            SizedBox(
              height: 5.0,
            ),
            MaterialButton(onPressed: ()async{
              try {
                List<Map>responde = await sqlDb.readData("SELECT * FROM notes");
                print(responde);
              }catch(error)  {
                print("Error occurred: $error");
              }
            },
             color:Colors.red,
            child: Text('Read data') ,
          ),
          SizedBox(
            height: 5.0,
          ),
          MaterialButton(
            onPressed: () async {
              try {
                int response = await sqlDb.deleteData(
                    "DELETE FROM `notes` WHERE `id` = 8");
                print(response);
              }catch(error){
                print("Error occurred: $error");

              }
              },
            color: Colors.red,
            child: Text('Delete data'),
          ),
          SizedBox(
            height: 5.0,
          ),
          MaterialButton(onPressed: ()async{
            try {
              var responde = await sqlDb.updateData(
                  "UPDATE 'notes' SET 'note' ='note six' WHERE id=6");
              print(responde);
            }catch(error){
              print("Error occurred: $error");

            }
          },
            color:Colors.red,
            child: Text('Update data') ,
          ),

      ],
    ),

    ),


    );
  }
}

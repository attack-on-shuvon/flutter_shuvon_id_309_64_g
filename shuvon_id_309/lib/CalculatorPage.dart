import 'package:flutter/material.dart';
import 'package:shuvon_id_309/widgets/input_field.dart';

class Calculatorpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CalculatorPageState();
  }
}

class _CalculatorPageState extends State<Calculatorpage>{
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  double result = 0;
  final _formKey = GlobalKey<FormState>();

  TextStyle? get toolbarTextStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.orange,
        centerTitle: true,

        actions: [
          IconButton(
            tooltip: "Settings",
            onPressed: (){},
           icon: Icon(Icons.settings)
           ),

           IconButton(
            tooltip: "Go home menu",
            onPressed: (){}, icon: Icon(Icons.home))
        ],

        

        
      ),

      drawer: Drawer(
        child: Column(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Center(child: Text("Calculator App"),),
              
            ),
            UserAccountsDrawerHeader(accountName: Text("Shuvon Rahman"),
             accountEmail: Text("Shuvon@gmail.com"),
             decoration: BoxDecoration(
              color: Colors.orange,
             ),
             ),

             ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
             ),

             ListTile(
              title: Text("My profile"),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.pop(context);
              },
             ),
             ListTile(
              title: Text("About Info"),
              leading: Icon(Icons.info),
              onTap: (){
                Navigator.pop(context);
              },
             ),
             ListTile(
              title: Text("Exit"),
              leading: Icon(Icons.exit_to_app),
              onTap: (){
                Navigator.pop(context);
              },
             ),

 
          ],
        ),

        
      ),

      body: Center(
        child: SizedBox(height:500,width:300,
        child:Card(color: Colors.orange,
        child:Padding(
          padding: const EdgeInsets.all(26.0),
          child: Form(
            key: _formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InputField(controller: controller1,
               keyboardType: TextInputType.numberWithOptions(decimal: true),
               labelText: "Number 1",
                hintText: "Enter the first number",
                suffixIcon: Icon(Icons.numbers),
                 validator: (value){
                  if(value.isEmpty){
                    return "field is empty";
                  }
                  return null;
                 },
                 ),
            
              SizedBox(height:20),
              

              InputField(controller: controller2,
               keyboardType: TextInputType.numberWithOptions(decimal: true),
               labelText: "Number 2",
                hintText: "Enter the second number",
                suffixIcon: Icon(Icons.numbers),
                 validator: (value){
                  if(value.isEmpty){
                    return "field is empty";
                  }
                  return null;
                 },
                 ),
                 SizedBox(height:20),

                 InputField(controller: controller3,
               keyboardType: TextInputType.numberWithOptions(decimal: true),
               labelText: "Number 3",
                hintText: "Enter the third number",
                suffixIcon: Icon(Icons.numbers),
                 validator: (value){
                  if(value.isEmpty){
                    return "field is empty";
                  }
                  return null;
                 },
                 ),

                 SizedBox(height:20),


                 ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    String num1=controller1.text;
                    String num2 = controller2.text;
                    String num3= controller3.text;
                    result = double.parse(num1)+
                    double.parse(num2)+double.parse(num3);

                    setState(() {
                      
                    });

                  }
                },
                 child: Text("Calculate"),
                 style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.grey,
                  foregroundColor: Colors.white,
                  shape: BeveledRectangleBorder(),

                 ),
                 
                 ),
                 SizedBox(height:20),
                 Text("Answer: $result"),

                 
            ],
          )),
        ))),
      ),


      floatingActionButton: SizedBox(
        width: 150,
        height: 70,
        child: FloatingActionButton(onPressed: (){},
        child: Text("Scientific"),
        ),
      ),
    );
    
  }

}
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

                 InputField(controller: controller2,
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
                    result = double.parse(num1)+
                    double.parse(num2);

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
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        // padding: EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,),
              child: Text("Verify your\n phone number",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text("Please ﬁll in the 6-digit code that was sent to this number (+237) 673572533",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: const TextStyle(
                  color: Color(0xff330072),
                  fontWeight: FontWeight.bold,
                ),
                length: 6,
                obscureText: false,
                blinkWhenObscuring: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 45,
                    fieldWidth: 45,
                    selectedColor: Theme.of(context).primaryColor,
                    inactiveColor: Theme.of(context).primaryColor,
                    activeColor: Theme.of(context).primaryColor),
                animationDuration: const Duration(milliseconds: 300),
                keyboardType: TextInputType.number,
                onCompleted: (v) {},
                onChanged: (value) {
                  code = value;
                },
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(
                            top: 10.0,
                            left: 110,
                            right: 110,
                            bottom: 10)),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xff330072))),
                onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Login()),
                  // );
                },
                child: Text("Verify",
                  style: Theme.of(context).textTheme.headline5,),

              ),
            ),
          ],

        ),
      ),
    );
  }
}

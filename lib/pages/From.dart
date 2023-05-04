import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class User {
  User() {
    this.email = "";
    this.password = "";
    this.gender = "male";
    this.igree = false;
    this.reveivemail = false;
  }
  late String email;
  late String password;
  late String gender;
  late bool igree;
  late bool reveivemail;
}

final _formkey = GlobalKey<FormState>();

User form_user = User();

// late String email;
// late String password;
// String gender = "male";
// bool igree = false;
// bool ac = false;

TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FromWidget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  labelText: "Email:",
                  hintText: "ປ້ອນອີເມວລ໌",
                  icon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ກະລຸນາປ້ອນອີເມວລ໌";
                  }
                },
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                  labelText: "Password:",
                  hintText: "ປ້ອນລະຫັດຜ່ານ",
                  icon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ກະລຸນາປ້ອນລະຫັດຜ່ານ";
                  }
                },
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text('ເລືອກເພດ:'),
                  Radio(
                      value: "male",
                      groupValue: form_user.gender,
                      onChanged: (value) {
                        setState(() {
                          form_user.gender = "male";
                        });
                      }),
                  Text('ຊາຍ'),
                  Radio(
                    value: "female",
                    groupValue: form_user.gender,
                    onChanged: (value) {
                      setState(() {
                        form_user.gender = "female";
                      });
                    },
                  ),
                  Text('ຍິງ'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text('Reveive Email:'),
                  Switch(
                      value: form_user.reveivemail,
                      onChanged: (value) {
                        setState(() {
                          form_user.reveivemail = value!;
                        });
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: form_user.igree,
                      onChanged: (value) {
                        setState(() {
                          form_user.igree = value!;
                        });
                      }),
                  Text('ຂ້າພະເຈົ້າຍອມຮັບເງື່ອນໄຂ')
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text("ບັນທຶກຂໍ້ມູນ"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      print("email: ${_email.text}");
      print("password: ${_password.text}");
      print("gender: ${form_user.gender}");
      print("igree: ${form_user.igree}");
      print("reveivemail: ${form_user.reveivemail}");
    }
  }
}

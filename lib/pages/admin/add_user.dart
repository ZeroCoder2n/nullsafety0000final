import 'package:flutter/material.dart';
import 'package:nullsafety/providers/user_provider.dart';
import 'package:provider/provider.dart';
// AddUser

const teacher = 'teacher';
const student = 'student';

class AddUser extends StatefulWidget {
  static const routeName = '/addUser';
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  late UserProvider userProvider;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final defaultPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? groupValue = student;

  // DateTime? releaseDate;
  int? id;

  @override
  void didChangeDependencies() {
    id = ModalRoute.of(context)!.settings.arguments as int?;
    userProvider = Provider.of<UserProvider>(context, listen: false);
    // if (id != null) {
    //   final movie = userProvider.getItem(id!);
    //   _setData(movie);
    // }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id == null ? 'Add User' : 'Update User'),
        actions: [
          IconButton(
            onPressed: () {
              print(groupValue);
            }, // saveMovie,
            icon: Icon(id == null ? Icons.save : Icons.update),
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Enter Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: defaultPasswordController,
                decoration: InputDecoration(
                    hintText: 'Enter Default Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            ListTile(
                title: const Text('Student'),
                leading: Radio(
                    value: student,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value;
                        print(value);
                      }); //selected value
                    })),
            ListTile(
                title: const Text('Teacher'),
                leading: Radio(
                    value: teacher,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value;
                        print(value);
                      }); //selected value
                    })),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: DropdownButtonFormField<String>(
            //       decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(6),
            //               borderSide:
            //                   BorderSide(color: Colors.blue, width: 1))),
            //       hint: Text('Select Movie Type'),
            //       items: movieType
            //           .map((e) => DropdownMenuItem(value: e, child: Text(e!)))
            //           .toList(),
            //       value: selectedType,
            //       validator: (value) {
            //         if (value == null || value.isEmpty) {
            //           return 'Please select a type';
            //         }
            //         return null;
            //       },
            //       onChanged: (value) {
            //         setState(() {
            //           selectedType = value;
            //         });
            //       }),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton.icon(
            //         onPressed: selectDate,
            //         icon: const Icon(Icons.calendar_month),
            //         label: const Text('Select Release Date'),
            //       ),
            //       Text(releaseDate == null
            //           ? 'No date chosen'
            //           : getFormattedDate(releaseDate!, 'dd/MM/yyyy'))
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // void selectDate() async {
  //   final selectedDate = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime.now(),
  //   );
  //   if (selectedDate != null) {
  //     setState(() {
  //       releaseDate = selectedDate;
  //     });
  //   }
  // }

  // void getImage() async {
  //   final file = await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (file != null) {
  //     setState(() {
  //       imagePath = file.path;
  //     });
  //   }
  // }

  // void saveMovie() {
  //   if (releaseDate == null) {
  //     showMsg(context, 'Please select a date');
  //     return;
  //   }
  //   if (imagePath == null) {
  //     showMsg(context, 'Please select an image');
  //     return;
  //   }
  //   if (_formKey.currentState!.validate()) {
  //
  //     final movie = UserModel(
  //       name: nameController.text,
  //       image: imagePath!,
  //       description: descriptionController.text,
  //       budget: int.parse(budgetController.text),
  //       type: selectedType!,
  //       release_date: getFormattedDate(releaseDate!, 'dd/MM/yyyy'),
  //     );
  //
  //     if(id != null) {
  //       movie.id = id;
  //       userProvider.updateMovie(movie)
  //           .then((value) {
  //         userProvider.getAllMovies();
  //         Navigator.pop(context, movie.name);
  //       })
  //           .catchError((error) {
  //         print(error.toString());
  //       });
  //     } else {
  //       userProvider
  //           .insertMovie(movie)
  //           .then((value) {
  //         userProvider.getAllMovies();
  //         Navigator.pop(context);
  //       }).catchError((error) {
  //         print(error.toString());
  //       });
  //     }
  //   }
  // }

  // void _setData(MovieModel movie) {
  //   nameController.text = movie.name;
  //   descriptionController.text = movie.description;
  //   budgetController.text = movie.budget.toString();
  //   imagePath = movie.image;
  //   releaseDate = DateFormat('dd/MM/yyyy').parse(movie.release_date);
  //   selectedType = movie.type;
  // }
}


import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class PostLomba extends StatefulWidget {
  const PostLomba({Key? key}) : super(key: key);

  @override
  _PostLombaState createState() => _PostLombaState();
}

class _PostLombaState extends State<PostLomba> {
  String? selectedCategory;
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  Uint8List? _image;
  File? selectedIMage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(
            horizontal: 16.0, // Add horizontal padding for better readability
            vertical: 20.0, // Add vertical padding for visual balance
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add New Competition',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Adjust spacing for better visual flow
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blue),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.all(15.0), // Add padding inside the container
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTextField('Nama Kompetisi', 'Competition Name'),
                      SizedBox(height: 16),
                      buildTextField('Deskripsi', 'Description'),
                      SizedBox(height: 16),
                      buildCompetitionTagDropdown(),
                      SizedBox(height: 16),
                      buildDateText('Start Date'),
                      SizedBox(height: 16),
                      buildDateTextFiled(),
                      buildDateText('End Date'),
                      buildDateTextFiledd(),
                      SizedBox(height: 16),
                      buildTextField('Contact Person', 'Contact Person'),
                      SizedBox(height: 16),
                      buildTextField('Fee', 'Fee'),
                      SizedBox(height: 16),
                      buildTextField('Registration Link', 'Registration Link'),
                      SizedBox(height: 24),
                  
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, 
                              children: [
                                _image != null
                                    ? CircleAvatar(
                                        radius: 40,
                                        backgroundImage: MemoryImage(_image!),
                                      )
                                    : const CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                          'https://media.istockphoto.com/id/1200064810/id/vektor/tombol-ikon-login-profil-pengguna-atau-autentikasi-akses-orang-simbol-tanda-logo-masuk-akun.jpg?s=612x612&w=0&k=20&c=_TE59w0PwIxmcW8bFe-ChSKUFr4KJnecIRI79aD5K8E=',
                                        ),
                                      ),
                                Positioned(
                                  bottom: -0,
                                  left: 50,
                                  child: IconButton(
                                    onPressed: () {
                                      ShowImagePickerOption(context);
                                    },
                                    icon: const Icon(Icons.add_a_photo),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'Create',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ShowImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Widget buildTextField(String label, String hint) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  Widget buildCompetitionTagDropdown() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Competition  Tag",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(7),
            ),
            child: DropdownButton<String?>(
              hint: Text('Pilih'),
              value: selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue;
                });
              },
              items: [
                DropdownMenuItem<String?>(
                  value: 'tag 1',
                  child: Text('Tag 1'),
                ),
                DropdownMenuItem<String?>(
                  value: 'tag 2',
                  child: Text('Tag 2'),
                ),
                DropdownMenuItem<String?>(
                  value: 'tag 3',
                  child: Text('Tag 3'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDateText(String label) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDateTextFiled() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.blue,
        ),
        textAlign: TextAlign.center,
        controller: startController,
        decoration: const InputDecoration(
          hintText: 'YYYY/MM/DD ',
          hintStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        onTap: () async {
          DateTime? pickedDate = await _selectDate(context);
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            startController.text = formattedDate;
          }
        },
      ),
    );
  }

  Widget buildDateTextFiledd() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.blue,
        ),
        textAlign: TextAlign.center,
        controller: endController,
        decoration: const InputDecoration(
          hintText: 'YYYY/MM/DD',
          hintStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        onTap: () async {
          DateTime? pickedDate = await _selectDate(context);
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            endController.text = formattedDate;
          }
        },
      ),
    );
  }

  

  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime? date = DateTime(1900);
    FocusScope.of(context).requestFocus(FocusNode());
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    return date;
  }
}

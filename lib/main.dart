import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const contactpage());
}

class contactpage extends StatelessWidget {
  const contactpage({Key? key, this.mycontact}) : super(key: key);
  final mycontact;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfcontacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              backgroundImage: NetworkImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "${myContacts[index]["image"]} ${index + 23}"),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text("+233 505 419 44"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfcontacts = [
  {
    "name": "Ntolee",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "+055108655",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Ntolee",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "0244896540",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Bedawu",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "+055108655",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Mariam",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "+243510865",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Nadia",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "+245789030",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Ama Ofori",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "+542367508",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
  {
    "name": "Ntolee",
    "location": "FUNSI Ghana",
    "email": "nbedawu@gmail.com",
    "phone": "0245758101",
    "Group": "family",
    "image": "https://picsum.photos/200/300?random=",
  },
];

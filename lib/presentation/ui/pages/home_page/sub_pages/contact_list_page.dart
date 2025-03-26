import 'package:flutter/material.dart';

import '../../../../../domain/entity/contact_list_entity.dart';
import '../../contact_list_page/widgets/contact_list_item.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  List<ContactListEntity> contact = [
    ContactListEntity(
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contact',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Add Contact",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            width: 376.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.shade100,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey.shade300,
                    size: 28.0,
                  ),
                ),
                Text(
                  "Search name, nummber, etc",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35.0),
          Text(
            "A",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.7,
                        color: Colors.grey.shade500,
                      ),
                      bottom:
                      index == contact.length - 1
                          ? BorderSide(
                        width: 0.7,
                        color: Colors.grey.shade500,
                      )
                          : BorderSide(width: 0.0, color: Colors.white),
                    ),
                  ),
                  child: ContactListItem(contact: contact[index]),
                );
              },
              itemCount: contact.length,
            ),
          ),
        ],
      ),
    );
  }


}

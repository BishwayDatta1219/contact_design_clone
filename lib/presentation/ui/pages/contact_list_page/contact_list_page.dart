import 'package:contact_design_clone/domain/entity/contact_list_entity.dart';
import 'package:contact_design_clone/presentation/ui/pages/contact_list_page/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  List<ContactListEntity> contact = [
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
    ContactListEntity(
      imagePath:
          "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
      userName: "Alesandro del Piero",
      phoneNumber: "(+62) 8126 - 3820 - 3928",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                    return ContactListItem(contact: contact[index]);
                  },
                  itemCount: contact.length,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  _buildBottomNavBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Icon(Icons.star_border_outlined, color: Colors.grey.shade600),
                Text(
                  "Favorite",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Icon(Icons.schedule_outlined, color: Colors.grey.shade600),
                Text(
                  "Recent",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.grey.shade600,
                ),
                Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Icon(Icons.call_outlined, color: Colors.grey.shade600),
                Text(
                  "Call",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

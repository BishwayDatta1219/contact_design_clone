import 'package:contact_design_clone/domain/entity/contact_details_entity.dart';
import 'package:flutter/material.dart';

class ContactDetailsItem extends StatefulWidget {
  const ContactDetailsItem({super.key});

  @override
  State<ContactDetailsItem> createState() => _ContactDetailsItemState();
}

class _ContactDetailsItemState extends State<ContactDetailsItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [_buildUserContactDetails()]);
  }

  _buildUserContactDetails() {
    return Column(
      children: [
        // BACK ARROW AND EDIT CONTACT SECTION
        _buildBackEditContact(),
        SizedBox(height: 50.0),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 74.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.74,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                  color: Color(0xFFffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Column(
                    children: [
                      _buildUserName(),
                      SizedBox(height: 20.0),
                      _buildRowButton(),
                      SizedBox(height: 20.0),
                      _buildPhoneNumberDisplay(),
                      _buildWhatsAppSection(),
                      _buildTelegramSection(),
                      _buildFooterTextSection(),
                    ],
                  ),
                ),
              ),
            ),
            _buildUserImage(),
          ],
        ),
      ],
    );
  }

  _buildUserImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(70.0),
        child: SizedBox(
          width: 138.0,
          height: 138.0,
          child: Image.network(
            "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildTelegramSection() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 14.0,
        right: 14.0,
        bottom: 10.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 83,
        decoration: BoxDecoration(
          color: Color(0xFFfafbfc),
          border: Border.all(width: 1.5, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Telegram",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Image.asset(
                  "assets/telegram_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildWhatsAppSection() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 14.0,
        right: 14.0,
        bottom: 10.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 83,
        decoration: BoxDecoration(
          color: Color(0xFFfafbfc),
          border: Border.all(width: 1.5, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Whatsapp",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Image.asset(
                  "assets/whatsapp_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildPhoneNumberDisplay() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 14.0,
        right: 14.0,
        bottom: 10.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 83,
        decoration: BoxDecoration(
          color: Color(0xFFfafbfc),
          border: Border.all(width: 1.5, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mobile | Indonesia",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "(+62) 8126 - 3820 - 3928",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildRowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 120,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Color(0xFFfafbfc),
            border: Border.all(width: 1.5, color: Colors.grey.shade300),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble_outline_rounded,
                size: 23,
                color: Colors.blue,
              ),
              SizedBox(height: 2.0),
              Text(
                "Message",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 120,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFfafbfc),
            border: Border.all(width: 1.5, color: Colors.grey.shade300),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.call_outlined, size: 25, color: Colors.blue),
              SizedBox(height: 2.0),
              Text(
                "Call",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 120,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFfafbfc),
            border: Border.all(width: 1.5, color: Colors.grey.shade300),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.videocam_outlined, size: 25, color: Colors.blue),
              Text(
                "Video",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildUserName() {
    return Center(
      child: Text(
        "Alesandro del Piero",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      ),
    );
  }

  _buildBackEditContact() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 30.0),
          child: Icon(
            Icons.arrow_back_rounded,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 30.0),
          child: Text(
            "Edit Contact",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  _buildFooterTextSection() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add to Favorites",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Block this Number",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

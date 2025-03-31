import 'package:contact_design_clone/domain/entity/contact_list_entity.dart';
import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  final ContactListEntity contact;

  const ContactDetailsPage({
    super.key,
    required this.contact,
  });

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF154edc),
        body: _buildUserContactDetails(),
      ),
    );
  }

  _buildUserContactDetails() {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                        _buildSocialCallingButton(
                          socialMediaName: "WhatsApp",
                          iconAssetPath: "assets/whatsapp_icon.png",
                        ),
                        _buildSocialCallingButton(
                          socialMediaName: "Telegram",
                          iconAssetPath: "assets/telegram_icon.png",
                        ),
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
      ),
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
            widget.contact.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildSocialCallingButton(
      {required String socialMediaName, required String iconAssetPath}) {
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
                socialMediaName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
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
                  iconAssetPath,
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
        left: 14.0,
        right: 14.0,
        bottom: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFfafbfc),
          border: Border.all(width: 1.5, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                widget.contact.phoneNumber,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18.0,
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
        widget.contact.userName,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      ),
    );
  }

  _buildBackEditContact() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30.0),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 30.0,
              color: Colors.white,
            ),
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

import 'package:contact_design_clone/domain/entity/contact_list_entity.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatefulWidget {
  final ContactListEntity contact;

  const ContactListItem({super.key, required this.contact});

  @override
  State<ContactListItem> createState() => _ContactListItemState();
}

class _ContactListItemState extends State<ContactListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.0, top: 12.0, right: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: SizedBox(
                  width: 55.0,
                  height: 55.0,
                  child: Image.network(
                    widget.contact.imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.contact.userName,
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3.0),
                Text(
                  widget.contact.phoneNumber,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12.43,
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

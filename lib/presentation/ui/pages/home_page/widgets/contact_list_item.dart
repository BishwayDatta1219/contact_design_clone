import 'package:contact_design_clone/domain/entity/contact_list_entity.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final ContactListEntity contact;
  final GestureTapCallback? onPressed;

  const ContactListItem({
    super.key,
    required this.contact,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                      contact.imagePath,
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
                    contact.userName,
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 3.0),
                  Text(
                    contact.phoneNumber,
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
      ),
    );
  }
}
